Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530911FD1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 16:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649781778;
	h=To:Subject:From:Message-Id:Date;
	bh=dDCnLIuP4p6QVrzjEG7Lp0GYGo6BMX82o+7SmIS4FWI=;
	b=VFh9ewBgRkVV7B36q+bDOiTUEXfLJs/j+af/9ysFveTDp2hRgIEQJ3rsG6wG27Sf
	SNOYm9Z8dFRr0v6NVRiaq6+HgUM/XSQzd73VPrugwAAlW1SZhJZrXCYCjK5ptQzB0df
	lDWgb57g8WXfOFZvf8Y1Dty8ZhpB3If5VlnXrj5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649781778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dDCnLIuP4p6QVrzjEG7Lp0GYGo6BMX82o+7SmIS4FWI=;
	b=CcvxXITXkTF3vCTAKivBDFMnAN99lo8NKp38uNA4FxuNQS6dQ334+8/4PZRyyJi7
	QRmns/Pit/qWLYyshc3mzpv2GuU0DzENteqHfvxJDTbqPBXXD4QaS1LJCEU0nyhGskv
	MBJt8NdvxbMflgvcOgSR4RPhQxjg662OA7t8tu1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801ea82794-1528d491-cc1c-42a8-82a3-93cc1eb717eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6b3d5edcb7f97deb5a21a16d3d8183ba240491d7c485f4d2a16a97950de30ad
Date: Tue, 12 Apr 2022 16:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649781778
