Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5150415A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 05:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653023459;
	h=To:Subject:From:Message-Id:Date;
	bh=5+nl2Hx21cla0hb2KfCRKmZB8BMlQ4r648pCRWzuuC0=;
	b=LyTMA7e2yLn8IHWK3fNNdk8dF7UzvQyfnLwFI1DuIbPQ6fJfFYycwbx83pMdKtOb
	n/ga2OHDxWVFxda/rzCutpn4w+ZsX7GHGksLEghM/Eo6m+loDZD7Xn0IZtArPVwACb7
	glrQHnBn1detMAVNk8k7LaX9nShitxz03SdqRZLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653023459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5+nl2Hx21cla0hb2KfCRKmZB8BMlQ4r648pCRWzuuC0=;
	b=cTbYDYAKAXSHjy4S5Q5a+0+t1Eg/DIEu2TAunxaGvsR7f8M7DCdihFfx6v6o7GRL
	HWLuGoqc2Rj7U7WR+WsW9iONKel4CyVe+1lYqidAogJ9fmhSQ5d7jAyF5igAztEa9wb
	CBW5ls3zfYF4XTYUgpHYCcxu7up2mADJO8lx9rDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfe047b6-0e684034-5176-4aab-8bfd-f2eeceab7ec4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25df8ef3760fc5cc3118e5cfde6064a662258c10f42ab2f108dd0452410fa3eb
Date: Fri, 20 May 2022 05:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653023459
