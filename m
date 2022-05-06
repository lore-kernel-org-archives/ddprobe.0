Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04876623
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 04:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651813198;
	h=To:Subject:From:Message-Id:Date;
	bh=Tj1/S7xPnjPJfnM48FQ0Vq1AiDuE5j8DZQZWCo1LsQQ=;
	b=jQS+/ahQUnthnozKiuWrMNxM2vOXkobWIXTcjuoDtY2HNJHESkbxrJhuHGj0jM4s
	I+NO23UMYKMN5PbXil9DZ1KaAjjrHd4Jd1hZ19th4tcxbMfYZkCoHO3n9VGeC1xMxQ9
	FDHwiqsCIgQHcqJ/0GzhEDqBP+MYGEzHi74+x8XE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651813198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tj1/S7xPnjPJfnM48FQ0Vq1AiDuE5j8DZQZWCo1LsQQ=;
	b=BaP3wo0Xn5pGgPzfI2HfBVATgXuPgEGUcTXlJaQAOqPYSHk1fomRpdwzBlumpecw
	mJwOZevri4tuqcR/LFSvErAZapPFDmTcyHNszUSf47JknB/S0vBBECgF4Rsj/XF5f55
	X5DwihVeSPoA17/RPpDoRdQ71v+8hLwz2Y6O1qIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097bd29c1-f344bd28-94df-4194-8314-e4c94bf5d4bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c6a3366147f54430a1a8ce2f35068df630bdd5dbc6efd3bd0f050cf2099822a
Date: Fri, 6 May 2022 04:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651813198
