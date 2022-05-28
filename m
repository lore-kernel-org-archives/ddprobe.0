Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0C87F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653764819;
	h=To:Subject:From:Message-Id:Date;
	bh=9lZ9Gkj+zZGbBliwMKLlxGDFCUIYeHO7Ln4QMzo4DOY=;
	b=Z887axw4+Usts7lJrTZxne6V24AaTVB3xvw/vMYijlZux5+qEOLJ1qxuO+DUp+pk
	PCcxYtj54vJF8zQvxm0JYDFYkkkW2p6PWx5BOaO0+3gVkhNcWEFMkOuXM/jTc9wqRcE
	aFJh/BbetM6fvTCoGAxGs92fe/NYciEDd28Cmi8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653764819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9lZ9Gkj+zZGbBliwMKLlxGDFCUIYeHO7Ln4QMzo4DOY=;
	b=QZNF85oHcZyifoTSDOQvWTF2XzJo7ZPOjmP7XT7MSWb92Ty7xep82aRTOKYDiA+N
	deQdkGU7Miq0+obgVaB4s3EBidn9Yyp4M+HHC/ZgNpGVKi/c4ozsO5kekuFx3BYfF2V
	xpkSvOd4kdC7tdI3S4lK5CnBbSfgs2dRVA5qOzG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810c10895b-4d899a7d-656c-4e10-810f-7efbffb05262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 905837e503b579ee6ec4960095a03a8a370aac5c8255a02df80eeb26f1147173
Date: Sat, 28 May 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653764819
