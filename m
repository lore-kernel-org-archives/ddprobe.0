Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C6418D
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 14:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652366579;
	h=To:Subject:From:Message-Id:Date;
	bh=j5HjQpSIMLxduvLBHJi8kHyjXeDlLqVzfj125BMb88Y=;
	b=KlMpZ84R1bWqEPlmZGeDk2ox14YwdfuXycjOtqyPXOQx6uXZeeiYSc7+K1DAqhCo
	Qb64acsU+SSvZnfC4T5wJqwRiMAe5jEicbfxPz8aecKEOl95hCjejtLOZ7uU+KOlxFN
	yP6Kr5myawxwuBHpKRWJvqMx56AYNS3Mdv7RmmeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652366579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j5HjQpSIMLxduvLBHJi8kHyjXeDlLqVzfj125BMb88Y=;
	b=Czgg294IVa162oQxKYGYQAg4w+oOCx3WfkuU+U2wmNsdG1tKzQp7S0t1ES/QHqVa
	fJwVt5i3r9L6poIlwfFQ5tT0PsDW1/6bKw/UbyKeX5WWj1yZJN3M9LYMS/E3XH7y7ek
	QSHXrC2D6mrKGMCklELzCj7xpF+BPrUCrgYVURgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8b91641-8d1df884-449d-4fcf-a954-e1809125f870-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01a059dd85443c406016471914aacf505893b3407059216d502a0392e63da26
Date: Thu, 12 May 2022 14:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652366579
