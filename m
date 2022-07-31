Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B0A15A6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659285052;
	h=To:Subject:From:Message-Id:Date;
	bh=efuVBCsTEgPCqwT5S6Kqa/3wAx7/pyNwBIyZ1IvJxp4=;
	b=BwOhLgwR+0nldiXudrnAbJ74IPl9W4RU10admqN2SvmKNdz7mmFYE7CmqykN1UES
	N8VinyxGulxr0rlllLzR6HaOcnzIhb9X1mW6R7Bg98EyjHgLjZgQVMeck/va27mQJFi
	LuKdieu28v4ej5zh1LVocL7k48xd5ChH5Pw7ZBGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659285052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efuVBCsTEgPCqwT5S6Kqa/3wAx7/pyNwBIyZ1IvJxp4=;
	b=fl2i4TljcTFLHeFG1qQmFyC888xnFiMxMxaqQDl2z8k0aRDHx+cTGPKyRh40QS5v
	eg75yDL9VRHveenuSl4PAg2+d+rcDW//sM2GvXpeDCtIHCxE9f5ux9ufSmB1S98RSpv
	T9uU91d8IxFrUOjIumJgDNA7Ml/LckgXlB+voZ64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255189c8f-2ce48190-7f2f-4002-970a-88d1c50ef924-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 107137ff95fa27a34175a49695b42ae1e0eebe18cf0a8f567ae77a1b7515081a
Date: Sun, 31 Jul 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659285052
