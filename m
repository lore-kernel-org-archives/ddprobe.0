Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BBA2595
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 17:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654883819;
	h=To:Subject:From:Message-Id:Date;
	bh=K4jwgTW1APK/qsyG9OrX7DnntPY5UPMLcXa27pMKVDY=;
	b=bWX65ErqdQlej82IUDZ/clX/NNgXZnrgLvmCHgQLkeG/RoWP+sRhsba0x6jCJv+D
	nqY5zSocwoOVpAKnQxxuw1HZH4YVdYYRwCN41UFtvnrTy+M3o1VfmEhG9T6kP8V6kNr
	PYLbkZZ0J49WqCF3FRJooCfNe01msTUp4xvrHOs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654883819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K4jwgTW1APK/qsyG9OrX7DnntPY5UPMLcXa27pMKVDY=;
	b=Kk68nZ1o4Vx64R2HCcrxAvg9kh0j15Y6fvSHIF3MeVqeuBTJ1/uAMYrm3a2ctXHc
	1Qesrzd9antiN8QgQQVu3ud9AcVWu8MQioBRwJukuNezEzLrtt62H8BG98r9VIwaOub
	jB6oNeP6HYC9bOr3xwt5tgsnc0sEt8jKciYellio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ec31f1f-af00c81e-ec8e-4c29-8eca-e0ba96b4d16a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4113eb4790fd982a82f214d8d758659ced6e3d1ac58e925e22d5c833784084b
Date: Fri, 10 Jun 2022 17:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654883819
