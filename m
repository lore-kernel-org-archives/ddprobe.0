Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0034F33FF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656352012;
	h=To:Subject:From:Message-Id:Date;
	bh=fG0ps6X91FxbgMhVcbJdY5PI8yzR9KibGi41MxyDTic=;
	b=ZMp8C+SY5xI4c5lleR72oF2rKeVeuYL/oPVcp5Z4JfJft3L3rzdM1SDhVkYDTsSo
	UB3+C52g6YgBmBo3I5oZUXi4SRUvJRk0g6TsNPHmsa+Zcpe2s2PrEIgzgqfBb6a1sIc
	TEVIuUdKhLzis29sTZct/HLS5fJOs++RqhpigwxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656352012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fG0ps6X91FxbgMhVcbJdY5PI8yzR9KibGi41MxyDTic=;
	b=fI3OZgg/ueA2UfQbkpd0gmqe6+VF7Oa32Eon6ARcv7jFpdUJDhriouAwCjUOCrpr
	rCfnar4H4YnLd8Ap/ktavgecYXP/2hir43VarQe291XiUFQp1VfL/5PBGUbW0ISH2n5
	c4fHmBmy8+BZcMuTzAj5226hUcYs5nNn5v/wenB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a645f7e9-343abd33-8d16-4dff-a562-a9204830a5d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 033d533e6f977c9c87c95c9767ebae81c813144918dbfddd4ea8828642c97a00
Date: Mon, 27 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656352012
