Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D5E2F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653917279;
	h=To:Subject:From:Message-Id:Date;
	bh=+mxTFLrOaWav/0nDXIuX8Enb91RgMeLCBZ/nRZVrGh4=;
	b=P60rgg1gTX5XqlKM8jC1heoRkHhPRLu9zfTyW6pBTmGVQwLdSJIowMi/pqRN/iSN
	4BcvOCRafAuseGIA8lChKTDTGg+FbP12HYSgKOhVW85gyVSUMbEs8tquyA8oTwTQWtJ
	Zr3L66LidPY074UVTbi6HKRuPBa74RPxcoR2aZxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653917279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+mxTFLrOaWav/0nDXIuX8Enb91RgMeLCBZ/nRZVrGh4=;
	b=URWAIR4coyks8Dy6jzc6VF+84FbyICZS2XnEv3PpV2rHnagPidqJ6iPGG+ogFp1E
	tesTwp5T0K6ZSIV2E3kgQuRMnjvp1wASCOHRJqgZZJgkMK1tgsXqudx/oKW1T66JU+X
	/y51qRAQkHDWg3DZvLA4I35P1tprLHmuwCnqn/vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811526e42b-8b683f38-8b07-48c2-8052-684e325731c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16dfda8f0a5f19904298b5f8fe5abe89aa978129ccd1119cf2a0d7dd6c7bb17e
Date: Mon, 30 May 2022 13:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653917279
