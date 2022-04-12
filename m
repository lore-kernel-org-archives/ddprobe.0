Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC211FC6
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 14:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649774278;
	h=To:Subject:From:Message-Id:Date;
	bh=Fj2QnrXWymilv09sf4kZBVs/ROSG8XFi4KxtABSWRqI=;
	b=TVvIMjTA8gd4t/N/QLvHZ4lbSFAzufWyw6Bq4u/KTNRwHxFyp3RDb+SIv2vrA8K4
	0pizvqigYI7h7+gqI76Ut99O6u6HVXyIh4Ejf5Fb7gmDFYkqR2Sm8JKogMPhoW6AbDk
	jOGytmrvOZ3RbvvywWUt5G1iBri1IfbjibnLkJmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649774278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fj2QnrXWymilv09sf4kZBVs/ROSG8XFi4KxtABSWRqI=;
	b=UFO5Gjhi/jev/edowsXFz0s/fkCbpgsOIyVr57xvPEQWuDS9FaThd7YEc4cqJk75
	EODdycQucKUIL1VMW2JksAkCv6SLxEMZ9OdfpoyC3y7+Z/3/ixdbBWA2Z9CNlf4F6/M
	RkiNGoSLA27ldunosIIC1eqn+wwk9i2tv7tqNZds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e35b656-7d0f873e-91fb-4cab-8270-50716abc5886-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66873ecf1e5319b9c5387f999cf3a0e66b6a99e9e845c1edcfa1b9ef985c7dee
Date: Tue, 12 Apr 2022 14:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649774278
