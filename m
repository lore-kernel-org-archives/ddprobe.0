Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676D67A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658936452;
	h=To:Subject:From:Message-Id:Date;
	bh=AlSwUZj60sgr6JCDPk9jAEq0Oui4Yh6OXhCf4cvDQdY=;
	b=jumvJCNc7z0Y2bNVlaccamkGjPk5KlN0EpgGfnswpP0dbCm5fj5QUIdiLdLdP5NO
	lNXL81o8wSt69vLvTVbrtBPy6sud+ydCap1jvJiLFPs+dZbP+YMOSjzEOO+spvzvHCO
	yUYMP6pYlta9HmtyhL1+kINo6+YK9OIMuZJmno3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658936452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AlSwUZj60sgr6JCDPk9jAEq0Oui4Yh6OXhCf4cvDQdY=;
	b=GG+17N8HcKSoVdUfpyx7ES2dlMTW+3OXqEsjDx4tE2hBpMRv3Z4bD9GoxLPujxHb
	e3aWnMNKb3iO1x39R+itlvFp4/qZlqRa2HJ4l8eLw909eodroFZaf0dfdW+kMe9X70M
	fKASQrDMZymZrQDDleg5a/v8+kTig+jkCSlDZ5fM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182405165df-8286f01e-28b0-4042-9100-db95a3dc147c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffeeaff48b5188e24ad7c9172870b8de13b9461d63a6582300dc5720af7c6db6
Date: Wed, 27 Jul 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658936452
