Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B3215A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 07:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648364458;
	h=To:Subject:From:Message-Id:Date;
	bh=NbunHhuaZVuoytRmarcQ6DIwOvwxqj3i/7spmmjOCZw=;
	b=fOTTmDiUOUoH4Gbfix7RTzhlj9zDPQomNmwSxwDBfdbXbfupxzCT6Ok4tIgGlqp2
	pYeo3MXB2/KLatX7AfIVWcGU8YOr1AmEyRwvCD7pjOhIryCdDQEzNHZnzz9aoxXk/fj
	9CpzaMwTwXMaTr929i+sSaA00/QRaegDrGnxzrCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648364458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NbunHhuaZVuoytRmarcQ6DIwOvwxqj3i/7spmmjOCZw=;
	b=jVSAj4a0lC3i4Oo5xfvexzNYMf7ymXByDJSOWHj1WElJyWlf+HEudZvqTBm4Ww1o
	XK6Ak5zqtvRhlztNNUFIvmIS6FXQLuTuSO63aX3K4FilEzd7v4k8TNwiPP+h+ZCzCdK
	7uEqZTS94QRAqk73p0KQTrXmTSUk5WnMDzJmXohw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca2d9195-1a6faa2c-7d6a-4952-976d-e092e143f2f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e18c2c5af59d6bc578b280770ee87c64569f7394594467676cf9a08b4d2e67c
Date: Sun, 27 Mar 2022 07:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648364458
