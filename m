Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A0C7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 16:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651076938;
	h=To:Subject:From:Message-Id:Date;
	bh=7AWCXGhneewbrajhbw0M+Psaut1SA+7SqnMxuivZVhg=;
	b=TMMwGVUiOGNF1/tLMvATJQVBre429UYlIg1f9ramnhWRGJFu8Pfriv6nJgVKLDgn
	xMC3uFyOBxShEp1YMGKf3tHiyvIFvkSkyRY1Tj9nJfQ5oLZPjtobcbqC3YKnSpHnqXd
	dxif5vPtOA/C/fV0QBAHX02FL7EHy0ruW1wJaJYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651076938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7AWCXGhneewbrajhbw0M+Psaut1SA+7SqnMxuivZVhg=;
	b=CqMFzXUjtPnquYim0I5KyVbhQ0dg+sQ8NebHZmfcuqm8dqf00/asRCyZ7QKtqmwR
	c6/zetQP4TgOCoTptnBpBdkeirI4VDGrW5/CvrTcVV/86tDagSeyp0TB/NWFcz5m+oS
	ZcX8Fl3t5OD9b6y8ciQw59Khm5oQYMU2tcsn5mmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806bdaba50-e075491e-8899-4126-82b1-b00b82c43415-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b106fbaee31c5fe7c9f8b2da497a864f3b0365c1ab585b7fe1106205e4e68d
Date: Wed, 27 Apr 2022 16:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651076938
