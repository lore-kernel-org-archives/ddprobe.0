Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467D20FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 07:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648538218;
	h=To:Subject:From:Message-Id:Date;
	bh=LVDfeNi0EruIEsfb64/wnmdukWfa9zdihOY659jWGvU=;
	b=NYeRQF09u5P2LRKIGyv3z0t4ejSBSJD3mC2FXSFJf111+5GWiAX3K62mYJj40Y9D
	JaiCxv2soGJzFdTsl+/WfdU1z/Mjdlod99tBArNFjKrlV6MkKPXzsGi7ysTuATSUkZO
	kqpIso630+wPX0alFwRPORtI+IjLJ1DyodOEiwuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648538218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LVDfeNi0EruIEsfb64/wnmdukWfa9zdihOY659jWGvU=;
	b=bx6MW4v5lSgdWxBM9d5aus8AdNOJKt9rGFR5QMvAWO+yovkgwxlpYXcKpBBLgFzf
	7M+YHxjjl8OmZ/3cXflhBuwwSzqvzUoPon+EQqV/pGhWqHm1i2cS7qTFaLdVyirvWxN
	BMcNeotkmo/p9fmitSmn2MHCv0LmlgPkmFjZfVD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd488ef61-b8d8a2e8-fac8-42b0-99bd-02cb7cb05aea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3ebbf2eb5f7f3fe87245d6e3cf2167c39ca2a55b11f746fb8051851a42d516
Date: Tue, 29 Mar 2022 07:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648538218
