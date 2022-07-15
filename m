Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4277320E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657866412;
	h=To:Subject:From:Message-Id:Date;
	bh=PeGaOCemqcc/+6Y3Jf5WcGJDcGXvB/xgVyudCI6TjWA=;
	b=fFwMdXyjxhYv00ozC/eyW8sYKp8Z0ctomztbLWknhDfYW8OAbi7SjsFvK1aV8TKT
	M//Bx3qZG8h3JswO7jBaDSrRJly5YqIymkrkpI49eApnCujDBKmneMUf6jwW5unUyJZ
	00fgWDUsvpFvRAqYVeLXbskAi8cPThkaJu1BbYcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657866412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PeGaOCemqcc/+6Y3Jf5WcGJDcGXvB/xgVyudCI6TjWA=;
	b=FUqbgILvofHXB8I7Upi/ow3ppgh56fxXXZA57bK2vv+3CH8f9BWVaueS2vdW0lj/
	839TWdnLiRWtoqN7xwdgnB8MU0rat/O7qDH4tCAAjECupMxyXtX3wEC+ghS1KE4Pg8R
	H0fnwTmS9WK52Ri1ffMreY6P4v07KZ42lfAbNi/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820089e100-c7bcdd91-4d32-4c93-b108-a60ea10e54ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 964cae4507ef6f0177147596cfe5c6ab993f384662bc0bccee09816f9e5ecaa8
Date: Fri, 15 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657866412
