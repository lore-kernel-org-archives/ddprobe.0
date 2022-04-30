Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E231853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 12:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651321198;
	h=To:Subject:From:Message-Id:Date;
	bh=xnQ5kTMDvmSyPl5Dl7geBaQ13N666OfWM6QnVq/EqSo=;
	b=RwhusA0M8Eacrwm9JIPQs1bq1jmc2vMB1Y5jUQkTZ9qahj4aRYkvUJgqiiY4fj8a
	3XX4vNUtn8e/qcJJW9ZelATXeKQPcugc2FcTlytFM8BaOlhXzAoIC9/IAVIJy8YtmTc
	KIjVmISiCHUOJvf6FCrBBjxvKA54RK5EWPrl8PNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651321198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xnQ5kTMDvmSyPl5Dl7geBaQ13N666OfWM6QnVq/EqSo=;
	b=eDqQ5HO5P1P0u7mXIapYcdHOPcwAm32IBO6PHiGUnUFPckc9zYqOEaKKKOHevleY
	3SA7KjgKQsSfD577qz2/S4hWzr2ofzn3qeTVK1ppLOi14+Nr84/aLgp24+mpevMeofi
	N0i+UcPUhUh7Yx/+Q7Eo8nuH/4MjGSEgJzv2PZLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a69d6ef-8d23e664-ff6f-4d10-83f3-2fd5de2bc7a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e975a903152fdcdc9e248041f3545844128a9cbb286345b1dd8c64ca990529f5
Date: Sat, 30 Apr 2022 12:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651321198
