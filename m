Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1247B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660884652;
	h=To:Subject:From:Message-Id:Date;
	bh=HV6QVJxBK1okCqvvO5Rpn7LNKrEHH72QCCXrm3OGDS0=;
	b=cEKzBY5iifY+uT8CAm8odfqrB7FlIlRkyxompzmhw09OZXDJbcsHTdV/c/sEiL4w
	1p39d+h/wwPJjQXp2LDnU0Mby9seFYDPZrrLoD51dYNOHho1eVpUOqoF4pu1JAe6Y4V
	6BNb4yKwWQx4ir1ZcGcO/ytukRu0ric3P6ZJWT4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660884652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HV6QVJxBK1okCqvvO5Rpn7LNKrEHH72QCCXrm3OGDS0=;
	b=TuPUibRWusmfnNg8OhJ7yKkKUP7D+RdKhMinG1E/XPOPRT70DJcAN+IVFNkXPG8h
	CMa9y37VGTKw1tiGI6NiBLEY70BShpakcoyVInZ0utbcPpTg4yJ1iUuEkwsCU/7pxnC
	jME0RlUK/BC/z45l4Xv4rKdQtPA9joibLVou5fqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4709203-ad845002-ff76-479f-b21f-e9a6cc138f62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0704f9d592e587a64bd93c2011cd7d031955627e775bd86157d66613262895a
Date: Fri, 19 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660884652
