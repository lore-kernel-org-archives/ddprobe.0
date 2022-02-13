Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B067C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 21:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644789007;
	h=To:Subject:From:Message-Id:Date;
	bh=QjLHDLAr3UaEuXHD63uYT0AG/frepbUfMfpmvxwUE1c=;
	b=CaGwpJwoEpOUJccpMW48lc+9KI8HOLAxlgabTuOv+xOE8WgjfJEfDITPkrQiP31x
	co+R1jqIaivMnKdTmBo9QX7/VgvxBIxjzobPlCgahZ+Rp77+GSxAQBuEgvF6YUZapzI
	xsOL6GFd/myNr2zMh961PTZg/wqldrWJnBYdcM6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644789007;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QjLHDLAr3UaEuXHD63uYT0AG/frepbUfMfpmvxwUE1c=;
	b=TFmubQQzhAIqdhdsbXWB7vyM1o0GfGGejEqMzegHF5XUPydX3384W/Btiz+IF3ZP
	HXfG+DOiFvJaELgNxx9FBj+Td8NRyUsM3rT/Z1GNy+J0X8kjROQyPMgJ4XTRpCKYv93
	yjgs3j+ReN5POMBibmnclFX1oJgR6TzWwRiCXcP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef510820e-0fda229c-5837-4099-8361-68794253af02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b49826cd34a04f2de9ffc99186b78a4beb2d478ecde9a1f3215621e735a7ae43
Date: Sun, 13 Feb 2022 21:50:06 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644789006
