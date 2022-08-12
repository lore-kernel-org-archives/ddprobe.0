Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D43366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660302052;
	h=To:Subject:From:Message-Id:Date;
	bh=j/7Q9rcpY5slySbr0VkF9mQ4qJbZ4C6AwcEjqrHjZMw=;
	b=VmTRo/KAhCw9om2PiyuNY4RrsHqpxgh/NCdike12dCXGjBWqxd/cCz1hzkAvVjJF
	7VI9rIo2Z2tX2FZUI102d7JLvnMJFdiQlEA703wxmNd8a3Vyih/Kn7QNTa91dPvVf9m
	sziKeDNkBq88DizGJjSZPtL6wyMoUV7v0gdT2Mqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660302052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/7Q9rcpY5slySbr0VkF9mQ4qJbZ4C6AwcEjqrHjZMw=;
	b=JfAFjgmYCEFeR/a25LVWZTUT47xEU07CUwEdqrhyS4bjjplJbSsbS1cVkK1hHcS9
	V7OqHZsFpMqaizE19d7bAneK/DK4JpyMNg8ZXocNTD1VysrKHHIEC/e9jNiHj8Wfyb0
	vVzQnbYez0ryx8txj5G4BwVS3Tq/7jQxNSzo5LZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291b6ccd6-c727f0ae-7481-4e7b-ae18-82217b054fe3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d055c9e2818ef9c1590484f758ebbc7e51b52d3a02ec89953831498846a0c8a
Date: Fri, 12 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660302052
