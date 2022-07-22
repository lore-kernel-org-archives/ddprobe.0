Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E276AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658519212;
	h=To:Subject:From:Message-Id:Date;
	bh=Fx89GK7S9upGYGWalumf96Y9q5MbjFCa8f4afPuM060=;
	b=iUfBsUoYP8j53ZlZ0rBvo72HkPrUSPe1XeMfVp8f09kOTfbzmlfTZrGs2x0nC/9y
	fL51BDZZIHacCdc+gwuFd7h7QUN8CN5ztJIBAm17p+0LKhoA1DQOweSejfBu6MYrRqY
	UqyZAqX3mnonbL5IT40AekMrD3Agd3OzoVAk5qwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658519212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fx89GK7S9upGYGWalumf96Y9q5MbjFCa8f4afPuM060=;
	b=KDmcy3+kOFG7x3+ateN/MuQCvGWLkeLTIFbXQlAOcgV9YdOF+dXtyxCnCW0rp16d
	3Hm+NMobp7l2E1vBmZ62+0KcWj7AT0to5/9SmloOjhg5TRmH2seT/RPqE9LVA3ZFn7m
	kSau+DKybqfkutrOndlnUM49arwR8DOiKl8nIPIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822772d12b-f10cea1d-65b6-4b46-8058-481fa7becdb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d9966a32690b9844d60640441f95b6d6cce40c28f722ffd03740a451fba3f54
Date: Fri, 22 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658519212
