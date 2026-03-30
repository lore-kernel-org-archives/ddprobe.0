Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A923D47A3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774877694; cv=none; b=dqUlojx8BZVe/0Que6xue+F0eT32fGgcxrspU29QE7PZ8Q5UefuKY14X28YWl4oZF9BQRWVxQPh4CcDD+BFoUa92LCq5sjCLhjwfZDghjiG494fjbRwf8MRECBrkT6z2INsMI3NsQB9cH3wnkw0l3oPKBcFNRuGIjCmWg7/+Mc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774877694; c=relaxed/simple;
	bh=7mUZYpiLAeR3vyqjZaOQi7N8rLxC2Ar8Q6gRv8hOPF4=;
	h=To:Subject:From:Message-Id:Date; b=sqy7v7Q6HbJ3UmQNxPJfUgwDyOkEv2m/spDHALIZ0aICIl2MVuLoNsNDVqnVg1sCRMpEMTJ8PVhG7mGgBicA7N0KKkLdut575LherQMe2bAko4hiMYNbMIP4uG0hGfQ51MpUz50XtCIKedBFOOcjYmenD3dl1d5zApCmHLJnEMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZMXi0xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZMXi0xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774877693;
	bh=7mUZYpiLAeR3vyqjZaOQi7N8rLxC2Ar8Q6gRv8hOPF4=;
	h=To:Subject:From:Date:From;
	b=IZMXi0xwFn7j8IwHVun3GmtBqZGC28OgBKuqhy1d9LVgte6uOGc6Nmb3Pdwq6j5wp
	 rREVkrgt1X2zdqPzf81wAIA0KiZXfYpIKYkjxlALZOtyymGV41Fee0WC3CQCVNon78
	 +7+4MRWWGQHjtG2sFj5B2QR1E0fy4C8Tkkq6QVXdboqZ+xqcTdJXS1/SLrYoApVv40
	 YXbT+pNC1ZNQRB8w6kAPZ2XCxUWdMY42UwdFSq/PPvYWjQnh3w+qkizdRe0ee+l4zQ
	 NedCwO41+91BgssywzTS5INHLXeGLFwVc3ZF8I6533+JWkFDNg489Cmx462RXy5rC6
	 wJbeYo8S7c1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D810D14B4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487769361.14621.14289351986551809146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b211e9661755dd55a0217265d6673a6a91f4c51d969d769e618a67928a6d36c
Date: Mon, 30 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774877693
