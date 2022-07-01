Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9731C3A
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656689212;
	h=To:Subject:From:Message-Id:Date;
	bh=b3QaiwrufV0UxDdkMfjOZinLlfs3xXn0KmcqGwmT8xU=;
	b=hk/rJjnO4kDVSLqmMRGM91W2RPZ3y53wOPXpUTA+kfnFdL2RVGpjDd4lKFuy8nO7
	tTaMtQ+7iEYCZgaB8+34mMWHIAlk61s5ed/ygKru1yfQAhfqdD5AoAkrpanF04Ycf0A
	jgbneO7fBQ54WozPsryUyNP0zFZsAy//CqoQFXw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656689212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b3QaiwrufV0UxDdkMfjOZinLlfs3xXn0KmcqGwmT8xU=;
	b=JlagSZ91nEalSgC9DHkJfyX/pOFvOSLYxTUx4ok1tlrhT95X7u6HKgUruz0wyNoJ
	gg0I64oxCoJcNBcAc+4yKkYmPgkx+tZUvPtYUFPRy5o2nW0YcnvKVX1hVQRlkkYxRWq
	b3KttAIN2itBaZHwYKYWuKBRWC38H3ZSqLlIPC+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba5f3b5b-e7c53f88-7084-466f-a794-bf454cbffb7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d7b1fe9c6f6b23cfe0bb60879cf6844e7bf742c5f013fdd33b1b2ecec189409
Date: Fri, 1 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656689212
