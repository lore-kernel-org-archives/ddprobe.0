Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2FC3218
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 17:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653155819;
	h=To:Subject:From:Message-Id:Date;
	bh=48X4F1B9BhAfZyoipbivIPtPjT/cbLf9ipMYuoNZRh4=;
	b=lcUnOdnicGknWKMD52NHhnmdADvKfH+Q1mLQtLy62h91AxUeTNAcTg9MsoGqFOz6
	HZ3c+nh22mzOgo3rRKdayPN7NpGwSi77kb/gxkJLHdZYMVfo8OtAo2G5XHXmjEeOZtV
	Rc9drP5DanRXTy7UqJ13TmFYs7NG7mqFhoKPINfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653155819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=48X4F1B9BhAfZyoipbivIPtPjT/cbLf9ipMYuoNZRh4=;
	b=YTiLfhBCsC0CutDg46KfifccT1SwkYCabsDFPf7BbHCp3njmw6hmTq/c5AeX1xH/
	nKWRwGO3sNZwwwjRa71T4BP/QiFbVimvYIsGh3MtSO9OA/WNM9JinWaKoF0QBYe0YRL
	UDM6tsJ8A0CfV+DuNHcM+CMknB2AfJdvoquqqniM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7c3eeef-1677b47e-45f4-4542-84a7-1c34786459f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 726457d369c5b2606aec530490d458497ad1049d586d34fde2908b1c953b9620
Date: Sat, 21 May 2022 17:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653155819
