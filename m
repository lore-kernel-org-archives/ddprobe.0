Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7459C7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 08:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653035039;
	h=To:Subject:From:Message-Id:Date;
	bh=sALtomU2Z9MSFTT8dF9yiSaDg4SjVul3zZnIk8qw8g0=;
	b=RGRMGmx4SvIgjvKRoztT1HHCNUP4WZdgLrkAcrhzPt13vxhBLw9/w3vcmDHtPVEp
	7W0q8SKcukm/Va08W3RNQRSpTQM6y6laVXsQhimCH46MOJudA/poWGoXYl8fnbgw2aa
	u8VKoRowhehJFP010Gvm1Lw442ohpAnzTShJUUU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653035039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sALtomU2Z9MSFTT8dF9yiSaDg4SjVul3zZnIk8qw8g0=;
	b=i3kAAm8cHWQUBOvdrxhnFmgwQSBOsjwJqSNJ2pOOYT/fGfpkEPxI6TvoHDYidV6s
	xH6lsdw53vZhbFXMTmmB4wnIQVNhOq3/dR45PcPLM8E5WV16AXwIIid8mbJkpqf+jRj
	KFuXFB4szkVW5IQbmodfesAIIcc7n/4wm7LfIf3Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e090f9fd-3a9842da-86b6-4aae-83ab-f2de7f003b12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6760d14bd8df8617fd5e456682454c849e03b074c5d5d93f7cc1d1d59ff4972
Date: Fri, 20 May 2022 08:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653035039
