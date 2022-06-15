Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1A77A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 19:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655322539;
	h=To:Subject:From:Message-Id:Date;
	bh=+gJi1cKhmM4LEofWtI2ckCkqc0k/8PynhGUqRMqFkVY=;
	b=LPRq8SEVzWvsH3oUwN4sERwfqSgdGfMhaqzZjO5Wep5PNfX7DT1jNudSPUIxzs/Y
	O02G1FpMKbHNZw75YTXfqCmsUm/x6UR/+NEK/kLWrSFfveDAEGyvQfvICyVDDrKnJS5
	X4LhmdvwNJDgq0wcnHDLfu5HxsH2VTrFBKGgtmgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655322539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gJi1cKhmM4LEofWtI2ckCkqc0k/8PynhGUqRMqFkVY=;
	b=gkyQjx7B0t8JtnVgV7iGxm2bfXPimW94OZeXlc32/SsSE/T0Vd5yzyI+cfZICNOI
	TuTL4+goPHl8SRoED11ieyHVV3OcvybxUvqtst8WdCGQu9mPHvbGLIhZXngt9CJ5YoZ
	jdUGxi2T8WsfDWFrxS/Pj5OryW8dw473wyVhCkL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168e97538-1fa80da1-a6bf-40a1-bb56-15c3fadfcfb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc155aa42e0baa11149c442c8764ddd886e6a2a0fbd42ce9a06f4150ae80e39b
Date: Wed, 15 Jun 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655322539
