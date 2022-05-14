Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16328362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 08:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652515979;
	h=To:Subject:From:Message-Id:Date;
	bh=TKUMfcvMTWCg09Pk1mWSYHMrX8pzxTl4qZnv20pPVrE=;
	b=JJHzS2tCZRnAuE2bZCORtHaPUhEVIAv2crDrWNmC2uak6L0+sLQ0YTz2Em2H9XqL
	y4lIffeAW18I+ESIkafWcNCrQmLcPr++3k8AGDLrOSzy5x5QZK0KnZbUqZ/cRc0ZSzc
	tUPfw0VTKgt1UHebZkjK8zr/Pn0vsLiQc/OSpRhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652515979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKUMfcvMTWCg09Pk1mWSYHMrX8pzxTl4qZnv20pPVrE=;
	b=OnnIcElnIFJqS9LY2OIpbS6uGs8TnhUHqewoMzKZ2s3tqxFm4jswb9jooWDIlzVu
	TnXrb1PoWE+PIe1gjRzPdlVY9VAZtr/uMWBEqgS2RQDonyK1VhlR+8qOKPdvimS3ocN
	fk4Kzrxne+ttKXGR0QitGMKkarh1ckArPRnro2uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1a0c013-7b361fb3-4b6b-43cd-8b51-2655fe1c6a33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd65236820db6d5def653e5969a97b96cb9723b16d3e144859fa688d65035b7e
Date: Sat, 14 May 2022 08:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652515979
