Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC92583
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 15:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651677958;
	h=To:Subject:From:Message-Id:Date;
	bh=YoX6Xr5EVRsS3m5fbaVTbILdviRVmOHNuVIq5/FN/qU=;
	b=fKn1VE47fQNSIrsKAOa3ZMSiiQVP0e5NmEDIl7HeLRLTsQLkvnVUwZkLbMbZ/0bR
	Ywb5Bb74LbU4mJq/Fj7PL0shVyJKEEDRJPFkLSIUzcPD5yCRBUXBzGk3C4sExLEr7Y0
	tGwhQXMAmX+T3xMMHUptIlOCTDsZmVreTtO8ZPqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651677958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YoX6Xr5EVRsS3m5fbaVTbILdviRVmOHNuVIq5/FN/qU=;
	b=GS3MXnrdkyHmWwdETAAy64+0gQGwvyhi6zbdTfoZ+/6rSufDm8IOy59SgVXgDxZO
	YhGZilk7FFapRmRzyWL3sd4XCn7Ba7clsiitFhJOewVV6fieNEeZyQAtSZK1/SRzfNv
	ye/dQA48RenSCVNsDaGYyRbOdo6dkjZKYbo6Vjy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808fad90b8-aa4d631f-3052-4458-add5-8e62b27b85e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49bca4138e8b9c647a181c999c0aeaa3da29fc5eab57c3d16a1b56a67995a6c6
Date: Wed, 4 May 2022 15:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651677958
