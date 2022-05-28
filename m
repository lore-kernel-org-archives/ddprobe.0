Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2284723B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 07:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653722399;
	h=To:Subject:From:Message-Id:Date;
	bh=l8SZXj6PCZ1oU0+tWf0l3mOWrTENnJH17oA0/8EUr2M=;
	b=Nv42Z95qKuiB2KD3iP3MNRKD8xAGCuqqNcgDKNUMFjv52h2Ld/vWAI5dZ3tfkI5I
	uzSN8dvb6a8orZZkVaq3CoHFbCduFD1l5tzoMEhDUp6bGa0422Dy4/02bt03S4OGSYZ
	q/jVcCtZdphnLOYVXGo0XqitqpPbYeBHU84AJfLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653722399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l8SZXj6PCZ1oU0+tWf0l3mOWrTENnJH17oA0/8EUr2M=;
	b=bbnU3P9yxW5/F7dL+MngO7yd/lkFMt3Ui+59JPMF3Ga69r44J2rPU0SOtOBkzHHR
	bcJgJtjaY2ZXoSv832v5kky9kZXigSwvjN9AkbutniS5CDfmDZM9Jqh6za5g+jo19Jy
	lg14N8cQeLe4OlgBM+C3E7dBhRS5vil+iQle/wU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109894266-975c5df6-47b1-4ceb-8642-a79316e09d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e99ce9a03480d56192690e249824518619195f34d29a80901b113ef1ccb5c4a5
Date: Sat, 28 May 2022 07:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653722399
