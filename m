Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9939320E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 12:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650024298;
	h=To:Subject:From:Message-Id:Date;
	bh=mPOGLPHiLmbIHzCcoYSzfGgPpNHCuShmvHkrIOJLeOo=;
	b=V7BT2z8ZV+as8XU3xMNvYfznAeP6zY27B6VWkB/j38RQp9YIC3XxgTRHdtsf6QKt
	vrD0713E+JoPTSfXbQUDgLD3wzmr009q5UK1UZEflGTUidjO2WbxZ86KJQGIodeE0yW
	q/NHrZfrUBpUJH0RWWXmZVtiqOfgheno0lSqbmR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650024298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mPOGLPHiLmbIHzCcoYSzfGgPpNHCuShmvHkrIOJLeOo=;
	b=b2G5k1JkyxGQGWXSlnLhkOR2qklJvIVfWYhBi9XHD7C1ch9fSD3xMnNIuJut2OT8
	NKb9MkVRhm6aTEK1mdK92kIxo7L5nqhhzUgkYnva5hscLmkUsGbu3zg1eaojyUoC7aw
	kz5niY8ODAVe52UFD+9U4ptZ4W/yO99EV7ADvXyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d1cb74f-2c7cfe2d-1fa5-49a4-8dcc-b73b7768f3a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ab022266a9ddae497fc27ba6c24af26e7049384a47f626762718c358303891a
Date: Fri, 15 Apr 2022 12:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650024298
