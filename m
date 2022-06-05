Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742FE1363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654447799;
	h=To:Subject:From:Message-Id:Date;
	bh=xMMRnuA5Sg5LzfHVbTqx3Xp1m2eqmgDTMVk0SNdb7hI=;
	b=HWnZ0OAf82EZsT33u+/B5hhf+VymExpOnSEiiZiZ0lJ5zgQZFTDUHswmPyM9qI2J
	gRURKYonTgJTZSPkuAu9tuw73dI5dSB1Qkf1d/+61Y4Co/QyHunpsDMZwhS2MI1cI0m
	4RLUC4QvcaO0xhwPDOE85WFUDAKXjs6qpwLUgWXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654447799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xMMRnuA5Sg5LzfHVbTqx3Xp1m2eqmgDTMVk0SNdb7hI=;
	b=RbJ+gPp4nUiYCR73sRtJ+ckepmk0aKd0xsxmel7EX8KqA4CYajbMejlf/T9h0QEe
	yFnVHPJae6Vd03aYCYuHoErRZPi/Ep3F4HPTgGzY071K40Hy+825kpQU/aCpk5OgvcL
	g+eWAyhVNubOVRe68jlt4vrULZfRHwhMdPgPTPio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134c5fc09-6973ad22-732c-4b7d-bd8e-3fbe5bd4f035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32bba57f8d22e6194a3b4568a2a80042a0b6905f6d7634e8d79d3bfe881a096d
Date: Sun, 5 Jun 2022 16:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654447799
