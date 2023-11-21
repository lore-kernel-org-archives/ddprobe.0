Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F383C182AE
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hH0LwKnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FACC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700543896;
	bh=Y50mz+h7yENZxE06/srzp9twItAvIEOiO8aLvIxKQPo=;
	h=To:Subject:From:Date:From;
	b=hH0LwKnqOm3AEow3xbdOhvRhWmzCX9UOA+XCQCplFI9pOechrVoPnYIRDACR8rQDr
	 7cUzRDqQP2MYui37n5YmwUXY/UEw6J5SUUTh+G0ywpH90NyoeXZmZ/LYQm6UOgUJmb
	 C6N2qVb4Fg4u2BhESW5spsrGeXejdfCXGMFpc09ySH5dsjM63bdGL7LkoxrNQSQtDG
	 GM0wts6snuVQgBcXF34SoAlLohdEsbiYNhx3XYB8SKHvd3TuU9VCtrmDm7cQW8AmvT
	 d+k7XdODcUQJo8ca9RnYGw/rZzzlV2FDr2qvVy9dMhwf9cpNrtxPklJRTWLLh+OBRW
	 bko5MYsiYoJcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC68C5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170054389636.16599.1629741581039099391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c1af6d363c8ea6a49f8020e071bc8ef174ca13d981b7f60d22d57f391aa24
Date: Tue, 21 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700543896
