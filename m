Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EBC649
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654088759;
	h=To:Subject:From:Message-Id:Date;
	bh=PCsb+NriKuANaF6EihnZGkrJQe0R8868dGZMO0mrJ2A=;
	b=ho5oAcoRax45iqsB7CpywXblmE470CR1jEeASakez8VowWqsY42t0Ycn9bR0WhpG
	8hFrj1vOCF7qk71utGRPhQNw5d6OMAv1f3Pc9/ZUKFi5X8uXGCjbyO1RWyhixX8VSXn
	jZq3IEhw3fzdJwGXaVefVyrPoUC+1lHVcjZ8Oi/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654088759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PCsb+NriKuANaF6EihnZGkrJQe0R8868dGZMO0mrJ2A=;
	b=ArzfCb8Kp1kY/2zCVINbJE1jJiGk1+Zz4jpjvuBGzBw0dSwTlSXK7v4+IFSxtTHz
	jtPxXVWLUHJ+ODF48EYaDh2TFq/tc8ocg9z+2vSnADRm6GeAHpUu3PDpFMCTLMNv1E3
	SS5D16aFaV1P6LVN46EqSuwkid0SjIQda1OckIt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f5f782a-981389d3-83b6-44db-9283-31ee083b3c10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b172c3e22657ee36be5ef25d4bac40769acf2b6de624feb72658b17f590419e4
Date: Wed, 1 Jun 2022 13:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654088759
