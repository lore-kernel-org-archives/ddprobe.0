Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0261FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656842812;
	h=To:Subject:From:Message-Id:Date;
	bh=yk+hubtneugfOvbTV8TLWVF1Tm6kYyEfo3osu5+L8Uw=;
	b=GeLZBw0YwyCyBFv/eFiYmRBaJAdvgwjNFuFnco/LM8jMlCrxtvf7fmy+o9Qcqso9
	43Yw4CI1KnmPSffB3teivsmyJtUeUAxeQaV/L9XCLVS1uQIUuS2n0J/KIwle0lfUFVk
	Ihlm+9WrJCWQzzVUw5KaR2cCF+yRHSvLP9YhX3MY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656842812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yk+hubtneugfOvbTV8TLWVF1Tm6kYyEfo3osu5+L8Uw=;
	b=ZbVaCBbQkegKcl6fSdEdARZoCb/pWCuQxcxyUjfTQbCmq7m3XlK00HaMhk8YiMIi
	oUj4uLOwRqQXjXv7xOI99Th/i1kuLV8T4GYK8sRHj2HYqzGTXWyIT2vw9zgQMgxxYmL
	O1lJTKdCDMH3Ef6oanD2cW0U3QSNyGG1tJG8Qahg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c386fba5-0be29cb5-e76a-45a6-b684-f669d4fdc9f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fabcb9616df7126775696f3028762ec4dc1b66326c9aa112926bcd206d3427e
Date: Sun, 3 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656842812
