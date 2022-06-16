Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDF815A3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 16:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655397479;
	h=To:Subject:From:Message-Id:Date;
	bh=VBG6L3cD8zjEFtUqAZCmT6F2E3iiuiBIPFzryToW21k=;
	b=eA0xIs3HFgkx1BTeKWG12V9YPvX/2ETFINZBmw5wKJyVxFPN2DGpPR3CUHZiR4qb
	p+VqfEQ8/kSAsu7AKe+qcBskfgLQ3EJ16+rW52P22ly2GXyTivZQ1cGaILqOuAsn4zJ
	XOfK6/d5pa1waKV1QG18fRUuS8UFIou+AWWwpyzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655397479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VBG6L3cD8zjEFtUqAZCmT6F2E3iiuiBIPFzryToW21k=;
	b=G7CiLl1Rowluy0+cweaAoSMS6JWUc4ZaIsp8vRi9pjUnDTyLmDrWRnIsMP7T0y8e
	y5fWQCFHmHGVWT4ktuvDZwhrW4U6OlvUQREFLo6Y4p3JD1y1a/UsPv/ZZYVgVciToe2
	AanZrNCd1Kbx7+zz6tn+v6g8TtfoboWOojsp+LB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d60f342-80d60ecb-1166-4104-9e5b-47616cb53f5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc91331e5dc483e2dc0e82083aac784a7125f88efa10ac2e1bd7ccd2e4da558
Date: Thu, 16 Jun 2022 16:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655397479
