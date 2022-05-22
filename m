Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020277C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653244019;
	h=To:Subject:From:Message-Id:Date;
	bh=hP4nGThTSqd0TrTKoW4agEl5eolDDUNVlHb0DUDR8z8=;
	b=X+FSNQONBCRSn8d8EPvrE6koivKv4gGvnpm0HMGEyMqJNYfYrNvuR2/X+3WLA49L
	V6VSM/WUlcQjA3XT3ZaS5GhJGx0isl/hmZCF9Y1t6Vz5K8N0H17zGcNLJGH40gKisdm
	qaP4EAo1/ZALKtkJSV2xPTo5x1Yuwl0wNQWqGv0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653244019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hP4nGThTSqd0TrTKoW4agEl5eolDDUNVlHb0DUDR8z8=;
	b=CPW48BcnPTwUYYhhUvdHjzcW2KYRhxp+TS6QeRJhNzfZKlKnDkahKlJ3IyERoAyU
	RhLPzZTnMpa1ku8NhU4JyJXG0qCMvfjCFpIZ5wUwgP5dpnWJVJZgV2ZeCLqipK8CWHc
	3xpATDQwEJqoGYyByfdqEWrXOsRG0lfdkTgi2KmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed05c24f-84177a4d-bcf2-418d-8665-40476846e32c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3533b84fb58fb434fbbec95a8b65d76bbaaa233a79798c0e89ebce2468f471f2
Date: Sun, 22 May 2022 18:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653244019
