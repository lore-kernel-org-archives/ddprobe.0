Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375AA110C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654330559;
	h=To:Subject:From:Message-Id:Date;
	bh=rESlsF/ycwxtN3BaewvIduBptWx8kBtsieRUdqV1slA=;
	b=ZkJimLSYAYNxqJBUOyYUk+X0wK8y27M05RNcVjHQ2mAowhcuX0oxn22AzcnLuO8/
	PB1Xy6Ch935V4evUQ4Ozrg6zKCebkdaFkgMRISkCKF26H41Zeis6CZbNC+WOvNOgFKZ
	MshVHlllRWY3Zm/Rz1O+qi42nRJRFllownrx1V84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654330559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rESlsF/ycwxtN3BaewvIduBptWx8kBtsieRUdqV1slA=;
	b=bxrWzXp7a46sjBuDpdqmuvWM4u8eVjYp2enVjGl68KMwEqX3tDJFEEnVrKQHo96o
	bSO59aTSuFszgtxtJFSWhyl/d3TF/uyhTSSP6DicBTSimk7P+NpRkKirc5hyuRnxOEm
	2qUcFd0rnGfEX0EZRs5V8zqF8MkEguMbceCl8Acs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812dc90b66-1cac6af7-cff9-479c-9bed-fb7ba435d2fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ef22b592daa2032c20f7ce45836d0ddf85bc01ec099cf17bf95769b89403b74
Date: Sat, 4 Jun 2022 08:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654330559
