Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F787E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 02:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650938698;
	h=To:Subject:From:Message-Id:Date;
	bh=PXIYTNapcUkSzo0wCvZ5dHJ9Kbny3DPZeXv17da3cTQ=;
	b=bHF+kfV4m6/cs4UZGOSiczW/5tuMlzMHLm4dBnauRPw6Y/onF8m/KtwgQGD6UZe9
	se95c+aSHv3/ggnIF/2nTIHjOAt11Al1LDtVyRo9sWfGrqH8yP+bSQFjLsK08z3IgOI
	qJgCxV/QTskIugoQAoq0hWza5vDtOwNIqdi5yfg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650938698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PXIYTNapcUkSzo0wCvZ5dHJ9Kbny3DPZeXv17da3cTQ=;
	b=gApf5VdUCDdLFKbOl85J840plmjEpEwbOCvkeVcY4pKMGLtvGLGx11iMl7e4KniT
	fJOu6Te9qHRBO+VPWk9RWawyteSac7gILt0SUy/X1MQmyf8JdCELzbVtFR0nz79l1ha
	Q0aBixPmAIEy/pIrFUElnAk1dN5vMz82Ib7rJ7RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180639d5a11-a4f32c94-051d-4556-9fba-cd6c21a66b19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f8d8137fb48ee2cc8849f87882bb0429f3ec7b8cbb861b28e678de5026dd558
Date: Tue, 26 Apr 2022 02:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650938698
