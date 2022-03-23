Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942C01866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648044984;
	h=To:Subject:From:Message-Id:Date;
	bh=tZxSZshhU7Uck/Tjf/5W3VnhhC0sges175PoR4UOYdU=;
	b=fDfU/qiVXdqgUsEV8kCp+M9FpBAOuZQZosZ8EEBMi2Aa0c5n7nl79obGZpEOrabZ
	2Otrly2/2limHJip6B7InplVOGzp3PQuC4YBAmJMuy3cgvHGi6I+4Q4ujz9Wd3a6zE6
	4SLDDYNbdymmibhXm/nY2mpMBsx1LYS8zYA44/VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648044984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZxSZshhU7Uck/Tjf/5W3VnhhC0sges175PoR4UOYdU=;
	b=feFPiouPxUUctCS1GqvivDBFB/M9UTqA6uDE2HdmfFhO7q+I3kMVMY4k+4WwaaXU
	kOlKac4LowthRB4MM4ATdJ+G0G3NuupVROQe96LvZ+yRGgyjLOzXSIimgQxMwxah644
	ULU5qps013D49DIGjPung87g8cqoE9WfHbI5+Bb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb722c9c2-f1224c06-4e5e-463f-8521-dd295a944a41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a9a3f13ff8c6069341ff4fe99ab2848a4c0d2d803ccccb47c5c0dd7d6cc3d6c
Date: Wed, 23 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648044984
