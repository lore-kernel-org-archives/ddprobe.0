Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BC0192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653094619;
	h=To:Subject:From:Message-Id:Date;
	bh=L3pg79ps11mMzCczLBj+Ug4au2ZOi9X43g6V1r7rSUM=;
	b=K2erVyZMoi972HTZ0I8BcWJZH7rCe9wiBwwMQeTZXlyL81/fThB+YB3ATjBYkSCl
	BQcBAKAJHlxB2ZaRyUVuLX7Mo/H/Gq7LtlVGsL7UE8HCR2MnOolW2vrPURFTkbyeoJU
	P5JZm6U4qo4y+ARCMh3UkmC+3TnCDb6CNMgD3bvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653094619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L3pg79ps11mMzCczLBj+Ug4au2ZOi9X43g6V1r7rSUM=;
	b=DHJCC3nk1UfHF6txRjJ8d5xUTR1KRHceSuAUigZzdhUDQ/d+q5HTzy6gfzhFI8JL
	WXHxOVGeOrAgA/KN9tO5jnVekJ88tWopQIePsQWkSpCVfEBsEKcr1c6IRiZC65Ox/Bv
	VQDKh0+TQUbtTECYrn4pdVbwfdP1Wc65J3kixSss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e41e1903-7067d758-1b73-43b2-b313-47706c0be441-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 117f67e0b5a24d38595f07d5dd0d75b948932fdfe2080eb49fd9f94b17ab46f1
Date: Sat, 21 May 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653094619
