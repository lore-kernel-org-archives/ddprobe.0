Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0201E10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652779259;
	h=To:Subject:From:Message-Id:Date;
	bh=9GpWM6HCiu/95u2c+UMOOXEDCu5EnmcH3kVSJt3g6VY=;
	b=Xn0H56zGSC1vsRiIQWYV3vm17jHFEr5YyKFf3HamMU1xb0OCwT13OJf/vBNp3TYQ
	W2zC00RSZa9nLQZF4PmhdkqrqWEzj9aXqBnntN3JXUYenW3dcec42q+s9rDEGLhBnJZ
	+eopGu8p5IRdTCrNJ+gSXJLVYAkLViu/7deOCnC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652779259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9GpWM6HCiu/95u2c+UMOOXEDCu5EnmcH3kVSJt3g6VY=;
	b=U26G02Pah0Hlih1aO3bNM2gxz2C5I9dvie2jFYhXjdOius+F8QxrAtQ6GgvVzp6c
	j5IV8AYSVrjqmwoWEp8+3JwspjXFtqntYACTtkuLZt5czIDjbIa+jVQy7QwV17rFXum
	OAX1Kkg7LZWLRti/0rN08acT+lUkrHPjqd93c5sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d152157f-99798b90-7205-44ab-a8eb-782db599c0a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d80521d5daf952112de2ae3bb70573a95a7a3edbae9f1324dc5d705233023cd9
Date: Tue, 17 May 2022 09:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652779259
