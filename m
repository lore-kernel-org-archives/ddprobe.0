Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392A423FC7D
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745942994; cv=none; b=VFx2yW7XwdcY4u9HGyTaxoEzgR5qt1JyGpy+erq0M2p3Nkrk4MBG7V2sl6JW2M/Ba04VNcpuoVW3Rc4TjIIfsQ5irV/Og/i0bbOB2akdG/24+Jll9RSgOWqjdJstEbsBKxfiClfjrnyHtUi6rLQ6VrhynF413hRAeIH6UpYhgBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745942994; c=relaxed/simple;
	bh=GWk6x/Q//eNrnB5W349d27ccU9NxXkt3PNM1/9rRo1Q=;
	h=To:Subject:From:Message-Id:Date; b=pDGf5lV/ZBNUKazu3fkk/O0dulmZwykLTJ7ffZasDZrz3fm4UMsuLN8Hnsh2zXcLPBHCGocMko5AIvVjLegd82rx6+86fRcKvmOJZGsgRDNrkYLkjSJ8DuJ+63nQKG6IGqOnMXeYT00rgBH8nTQWPAkTq1jevkylUhHhFDUjQ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5YuO/Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5YuO/Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745942993;
	bh=GWk6x/Q//eNrnB5W349d27ccU9NxXkt3PNM1/9rRo1Q=;
	h=To:Subject:From:Date:From;
	b=e5YuO/AaxQa8k8wCZhdB4VYlYvaxguFiD8GwRSm6P2pO5kOtSVfOvA03VoVPi4jpT
	 n/ump0kvi4XjqWG4cvefHdx4ttGjpFQT5tn4wRYYaWCPf8vYj0QY8oOslKpxfBkFzX
	 Vn97/wIUSnvpe4nxoXE2It0jbpuzZjKsJ0zHOd9P5AAFrIccpuwbbvMmieZYBrOg11
	 G5M2f5acwMttalIQeqzOIpG7Fc1NNi9oy+Jwc3pELdSNpXC3zyLi3GXMbiG917vvWf
	 B66qThcvFL2RzbXIU2+5rlJWEX0dtsb51j11ufM0OQlQzAYuCIK3PZP5NMGQ++ivga
	 vxLn+Lz7F3wYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42BC3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594299357.27542.17676205630365586355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8167113fc1ce64368d19531ba6ce4c998f9b911e3af8a6a557ed3ae0006f5613
Date: Tue, 29 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745942993
