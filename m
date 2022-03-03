Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30F07C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646290285;
	h=To:Subject:From:Message-Id:Date;
	bh=TGEu085y5TWwe4kIblpxQjRPubKUE3X+3AXq2bhZBEs=;
	b=GnIqeWCkExgeYuKQJC8DHpbEp8QPKqqXhNK5REg26gOCOfzbfvamTRptCnskQ8XG
	R1EHbTfKujz8sKK9jnQ7Bhz6RGiFgyWTiY9hMdoL4C+u3yViUjrIh9Wrf9vr/I7BVb2
	vcVhCPpE74kLLk6Gcd9oIcLVow41ycxorFDJSBGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646290285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TGEu085y5TWwe4kIblpxQjRPubKUE3X+3AXq2bhZBEs=;
	b=PGJNrErgl5cs9eep5yA3+JHMEhAfcihWuwO/qKvGoyTg/6r4qZhd+NuAL0KN+ouC
	XDru3gao2AMKJyqo7dfh9A7pIRHE+1VBN1txPwv1BHroCrMKReAcZtg4SEhlc5WlmHz
	VgScYtDkQwJQuaRUa9+f4KjPI63FgCCXlImVrQgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e8c30bc-6175bb9a-b1d2-414f-ba85-e9182cb4062d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4909315594ba59a17d81f7d2c0a6471de78012a24cba80496fcaf8220c61d61d
Date: Thu, 3 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646290284
