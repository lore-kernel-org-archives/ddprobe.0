Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEAC17D4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 05:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654667459;
	h=To:Subject:From:Message-Id:Date;
	bh=bkBtHeZMqNYUEM0GO5h56kRY9YTusUKIcsEBhOk9myM=;
	b=CFYpDD4VFDvX1ZCGCPq3Xem6YgSioq9eygN8niucO55HDAbux+hRpGt0mCqEAEvm
	SwZxi3IamBx9DGMS3ba3CLP4Jp3JW6rSgPZq5o70tG8ggz75ZiJxhRk5Gd7XZRFHji6
	czmzxHzRxSLRCsp0TkUky8PxEVDuJQ6yFXY/jZjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654667459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bkBtHeZMqNYUEM0GO5h56kRY9YTusUKIcsEBhOk9myM=;
	b=cHVdCWDIFkc/2AsKBkG5ObFeSSnoKhxPAGAtFu+wcrvKrePZ32OGEITjBEBV/iO0
	bTMrTkB2UBg3Pcpzda+xibvVPfE9WO4RjVJF38ZefDyKCuHnDzxTq61M2y+/sJgKMEi
	zwIQpBsILlP/CjcbqMw6a1TZll1F4y4IFC7oXXok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141ddbab8-e8e8d378-ba79-4b80-b09e-1d2422d4f0fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01cac10ac16a26b42ebbf4eac0f11338800053818a7e06e8df7c3f138a6cb67
Date: Wed, 8 Jun 2022 05:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654667459
