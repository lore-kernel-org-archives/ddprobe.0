Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C49180
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 10:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653993299;
	h=To:Subject:From:Message-Id:Date;
	bh=RMPJlz9qP20o9jHLqlagQpkN8KI/TyfyoHYRffAHeew=;
	b=X6LSOn1c/IC1HY8htdysYhldU6hmlVTLweYvDQ0KxUop8ALLCsVBkoHWW75l2EVw
	RLkeAdPsRCBQv/RAHl2Bajkk8vqGL8ZU8TGcIeoz2SvFXi6OHbXSb3UbAGRGLrBoHVQ
	rk7GiO1d01V+8YwMZqzVFqwN+WoWCPZWGnsYHn60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653993299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMPJlz9qP20o9jHLqlagQpkN8KI/TyfyoHYRffAHeew=;
	b=aFju9bsXiH16EQR2LGWsN7BVYWYW6EReQHCVlsA8kzTnChckCgs+s9vHI+YGoKnc
	EP+LSs0HsPRh/YsTtX/SmPnlxHpq9BWnxoH4wkzFbxr9vzP5Btr1uOilN/rorLW9sbj
	KyEevYFbty+xB4vsq5DarHjrZ75At7kb7tD5ACpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119aedd3a-fb80126a-76cf-45c2-897e-4b282ff1f339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62a9d5d1fcaf518534c97b8023e3466234b988038f5669f969de5d96a425874d
Date: Tue, 31 May 2022 10:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653993299
