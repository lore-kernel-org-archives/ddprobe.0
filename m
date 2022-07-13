Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ED04681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657726012;
	h=To:Subject:From:Message-Id:Date;
	bh=YmKdhhFwJrNijBLkIPLtZbZ9VfLd7zh8bzhRl7EYZ9k=;
	b=UiHJtbZDMMU9qZyK8PaYZaHeyKHvSDyWcPNtEqV8/nSQjMUHlQro9xedMr9f/Dwe
	jPlY+d0+NtgaTr8njUDby8BDz104MwO2PNG/FKmlpRIR4S1wljgykVggZpKL5HLVOV3
	RpNhcBu2y8niaq9pOXiFDc7cRUtjede+h10zxmm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657726012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YmKdhhFwJrNijBLkIPLtZbZ9VfLd7zh8bzhRl7EYZ9k=;
	b=gCrqrfQpJhE9X9T6XwqZ/3wG2PL/JIj4nuxWm1bxcuAzBlnrFmI+TnPqOQYq7RRS
	NFRchcHQPRrL9MCga7L37cj0B5TOXuknyH6oxyT//7vYE0+xGsILZswGBmbUXlwbano
	YhiTVubU+jTULpsvLQmQ8ujuLlykWP2gbG7dbwqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f82b8b62-d6d48b0c-ea38-4053-bb86-c6e408ee74fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a449d5dd6dfc13e87a4cdf68dcdfe0539eb952e59d60099ddc43964e71bc2e
Date: Wed, 13 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657726012
