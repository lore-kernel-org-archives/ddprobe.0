Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EC88F7D
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70822C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665622853;
	bh=RRUFMQpxRiTDPPJ0kGXM1OEAQ9RpSUyuevpyA5Pmrxk=;
	h=To:Subject:From:Date:From;
	b=En5nkQBDQ8TFkmP+C0cuifuNrdDHhmlyRT/+lg5/uhb+fDhCEAnHusWQmnGhPWSrI
	 1e+ukwuuRwCWBf023Kh/qlNzVztqCPLZnf2coRNdtCgalxin2LYpii1YRc8kypKMbD
	 fvwFfKvhGqW+qlz6MfMTVYoTB1w6SQFR4/8jsCe4K2bbWFb+yuOcy/yfCxuQcXRs/t
	 qQa6UTmh+IpbbxV4rsaSTc5ARP9eY8TjrNL1lnC33rvu6g6P6WR15bgdeHq3kqrXVB
	 aMiHZ0Bb8rMVWlxdT4z4nOYZfp5q09Eq7GwwmBsb8Rt15j8Pl3SV2ZJtOBdL1L5mZH
	 NMMMysAwGGEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5441CC43217
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562285333.2568.14033921470726466138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44755279839a2ef2f81012a0b3d385c28500cd0b353a88f7389f9c915cfdb928
Date: Thu, 13 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665622853
