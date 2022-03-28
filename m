Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4AB4366
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 14:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648476778;
	h=To:Subject:From:Message-Id:Date;
	bh=p8YxRG6GHimz0IrXlcmzmcBs/6Wqdf91YEbF54Wgmm0=;
	b=RpyMG70u8tf9mGuXeR3OVysDfl2KskucztIrW1GeAjPrL+AOhchzbsa1H1V41NUA
	7R58JxqFIuxADkbPmRp0q1Awt89AHVs+a05q1FnSGR6VvPk33XfOXVUZxl9A1mQ6wdc
	sZqgIZmYzLc3MnGXconPsLECjohKeXQ4G7HvVIuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648476778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8YxRG6GHimz0IrXlcmzmcBs/6Wqdf91YEbF54Wgmm0=;
	b=AvUrJVbKYPE+/XNJt0M4dKxqyer884JH4UniUyx5k7sS1qlB9q7MefiAwwYik6P7
	bcgEKiENV4Tosu9NOpToDLf4Romr5VuDm2tuV1rSzQtF8HF40yU8sbr8pWbx81C6Luz
	d4MRprlRV5lfaRmFdg7Jl4ZIkLDN3/WuBLC0+ROA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0df6f37-0da00f15-1584-4d6a-8a6b-7fcc56772123-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d91a1712ad159546c60aba36aa5c9aae68ea103bcc8a909b50d7b4cdd7bdb9f3
Date: Mon, 28 Mar 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648476778
