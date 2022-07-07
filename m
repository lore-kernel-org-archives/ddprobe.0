Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C6A7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657238212;
	h=To:Subject:From:Message-Id:Date;
	bh=yIpm4teWphCPaAeZsggozJbkwErBmZ3kQPPtpHAW43U=;
	b=A8gv0wAXPekieeAoh6vSu0g2dZi9HC1SLlXZbw9IwoP0DEFNMfRP3pu/Hnu0mqHo
	dJK79H6dGSbl0f91xXliC+9TNpnJhHa0L2Fedf2Y9/6v2AwG/Q6E4rKVto33J+mLZ4M
	xvmYgUyAQa3m9GgWyaSKwNsbxyh4kZ8GkNotQdyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657238212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yIpm4teWphCPaAeZsggozJbkwErBmZ3kQPPtpHAW43U=;
	b=R4HUKXdqU4EfZrmnxGhcAMnD+RNG2lKj9ZmUZTkLgiqZpwh3vkciV46MMiw8n/k3
	Zb1hvXWwoalLP/HazHNMXgW7x/Z5nuGuDlnUjIGaRWJOtV25vKU0QRdOgXIEa39Cc7A
	VOVm0tNMSeP1P02m+gvjwcM/lx4JW7d2BmUuQoQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db184eca-4127341b-f2e1-4e95-8220-ef3a64a43181-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a435b0327d219cff7a324442f867ba4badda5624a0532d6ea357cbe75647234
Date: Thu, 7 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657238212
