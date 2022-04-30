Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828121FA6
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 14:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651328818;
	h=To:Subject:From:Message-Id:Date;
	bh=7oPE0O5E8vGBALYHR8wAAjApon4fGk/aAZic99dTfNo=;
	b=Eb7tSpAJiWOZda8D2eH8VS4NE0sBFxzzStIB7Ys/V4kWfP36eTormCGlFJnuOJkB
	uLDsJYXylCBKnJUI9xhQjOIqdzOFSD4o3w30OCQehUm7SzzXN/He4UB/cK6a28bzhis
	qctyyA1FsOZQVH5+vzn/tkYjtlSKSSejtsKBmcUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651328818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7oPE0O5E8vGBALYHR8wAAjApon4fGk/aAZic99dTfNo=;
	b=gm5BuQjjvrSqk6mPmBK4th932MIRwKv/BgFY5MhQONCEnOcbvK1ke7/VMVn7kig2
	D4rir2I2SWf3YaVbBvo2C6hzcd8OzvLHv6ZJUZ4PAsnyB3l6eQcGZINJKGJFSOKapb2
	LaxAiX9yxY+GLyK+SEkHrjYkyarls8sxgna6BpZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ade1c3e-0516a49c-53e9-42ed-824a-2dc18f9f5ede-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5950bfc920ae6968a1ba2606a84f514b316cb4105d463c66e71c797c6b1f7a42
Date: Sat, 30 Apr 2022 14:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651328818
