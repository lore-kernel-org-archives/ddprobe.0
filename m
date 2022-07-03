Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7754623A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656851212;
	h=To:Subject:From:Message-Id:Date;
	bh=IthyE4dSlPIZ63DDKS5G5UQ1xMvXdRZlN8lJsa9n7dI=;
	b=PYNg9Y6kSO5oYfumVY6qgYou9KE56kBAm6GHkH40NYD1HSPzqL2kvzE6+WiDkz4v
	Q8bpuBJHQ/yVP4yZs5Ydy3sjk8trGS6WSVmaA4ALAOqs4mj4fiFB+NVZjCo7SH6amNC
	sOoFAp2Hh/aJad8L59hxD5GqrE8/TIack10dN49A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656851212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IthyE4dSlPIZ63DDKS5G5UQ1xMvXdRZlN8lJsa9n7dI=;
	b=HN4e4EPvKw5Jz7mVt0CX0NtF3t8n0jZsEF3Sgc95XKSgGO5yNV2ofqV3pxqfKfnY
	8dfTd5mmacMoGVM/n8QEzN9goginkpOInWKcTpt5dyDEf5oQrjj6VizCiO1tFnUiozJ
	ES0VwuTU2VcY13B5CH7u9DRbH0myXpQE02h89IWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4072844-d09cab32-2e7e-4396-8e55-9c463948c889-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 418abb79392a8a7d3843cf9545d125410ee91078a057d20d983c5144566e5114
Date: Sun, 3 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656851212
