Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96977E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 07:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651821418;
	h=To:Subject:From:Message-Id:Date;
	bh=CEnATq3NNUhCcMVXvqKJrPzQB3F2B4gWMX2ZkOvPOO4=;
	b=P7LXfb2IB//06LvH0nqcu4YIO65fUG5aNLp31zrMPHvpA1iU9W6vWk5XmC1c78Tv
	FefJ8Fs76TDmXVlZO2tP1me/17f3MT2P3fMzLX37GnjmLKgeDU8Mwf2Wemj/hatfq4s
	ObjV93cryQh1ydu/QQWkKAuln5LNDitZql+O6DuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651821418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEnATq3NNUhCcMVXvqKJrPzQB3F2B4gWMX2ZkOvPOO4=;
	b=hsBD6m7GiG70gPl+f4KduacrD4AZEKSIBNifDDLf+HSStJr25Tnn4WIZfmDt3rNO
	qx9q/sglXRCDaixqCtfmBtIyJMnbx0vM9/a6CgmnHGgzN3NNKSiCc+RrmYtDC4nqgdE
	h2ir8Rt3qMj1h/ABzkD5V0ifyKztZZN8DksS0JWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180983a970e-d8cbc691-b9bd-444f-9744-871ba8e3dbdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fddd5e7ffbf7744470ae10784c01a9d569d4e78443a50cfb63cfc6bd147bfefa
Date: Fri, 6 May 2022 07:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651821418
