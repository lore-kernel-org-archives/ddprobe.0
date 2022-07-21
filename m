Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2971854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658386012;
	h=To:Subject:From:Message-Id:Date;
	bh=MnDvVyvJhI8iL3FZaQl8jlBj+Xp6emBe47KlEkljwuY=;
	b=FZmev+HiO+ZQUrwItbfXnD+csCPDMs/zyBUoE6KL/9XOg7DmOnnsUfdad+WcG7TP
	jm7HeD3+4tN6XpYuJJW9YPyd99egKnx27eh8omMkuBBUwEDslaFwQHJs/SpNYY14BGp
	/7T1iBbbMByoncdeL0ag44gh80XyLGvs1FPEfLeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658386012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MnDvVyvJhI8iL3FZaQl8jlBj+Xp6emBe47KlEkljwuY=;
	b=HemorxabHSZjJkEsPGPUO1vIaXyVFwVP7TgLz51gufQBibOlWx/HyCyfJ9NAwjs1
	HaYwgtZQsSUQl2emiDpw9h/3o50lO6Ma6SSg1fYKTEsKUvaDvnXNbDLKQH8aS73FEkH
	/mS7R4GotGidvVUFgliRG3sh6/vGY0DUyCJNiFuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f82585d-688af3b5-2a7e-4913-b9f9-0c90ffd31621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdb705d63e1558f947d65454d99f254d804ff787ca5488129be9727db7833cb6
Date: Thu, 21 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658386012
