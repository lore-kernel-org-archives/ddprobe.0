Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901C17A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655217419;
	h=To:Subject:From:Message-Id:Date;
	bh=N0i5n5JlzuDFI/LWKKjHKmT9MJOg1R3h12osfBdOMG8=;
	b=BmRKcCrFGfOuLtM8oGiJ7BOkNMK3nRQdFqX3Lrhx1I5Rloe0wWEhxoh8K4e3Ugv4
	oZcqKVJdQExXR/DYLv1znmEVwJQ5Ywr4yQMlHT01lvijRYS6f88jP4PW5vbwPWZAGCa
	U+E1BZSXr3DTfl3bdrwzN4VeF92xXsgrDUhRxLmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655217419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0i5n5JlzuDFI/LWKKjHKmT9MJOg1R3h12osfBdOMG8=;
	b=EUB3QL092B6CrpIs4pyZ6cl8cSXzCBe/XZL2rGLaW7rpetaICLDJdbbOQXKl7SnX
	0gi07czLeUfkwTboGyVTwu+ux4lFbm6BhRBt4OKXT3CsXVcmGo75zz8Kz0FNGYQYWB+
	epZ0ehfyIFVJHp07VOBmuud80+SeFW9DlIBZh3H8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162a573ef-627ef227-d320-4b45-ba33-fdddb1bcdf31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcb7c6263a7c4ebf85f6ecb956b575496ad63cb9658d855b1129800cf8ca44cf
Date: Tue, 14 Jun 2022 14:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655217419
