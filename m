Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA222A32
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717A9C43147
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669026654;
	bh=WLT/XL2sCBuUixIMMvEbPvwdYwED6OA3/ckn979GTuc=;
	h=To:Subject:From:Date:From;
	b=d5F5AHC0eco9C6bnGFHDKvSfAq6Le21pnds+VlE3eSFZWSh5dTFh5HCQP5oS/NdcN
	 mAX6V5L0VjrV2E5/WcAcvWxfWntKyJkWhWgdZVOQDajWvD8EfWxsStXwn+0NOuiWiJ
	 ZU5oTGYIcaAV8PJ9Or0uRhTHjgvU8BsnkzNR7kfg8KPo3bWRQTc6NtVE8c2qSIcdpa
	 k8ql1g60oaDXdeXszQMMw0jvNb6HGwxSyqlWlmEFiWkN+TC/1segWaYnkfh6Z2aSpD
	 rMNmBYjB+rzmtsaASUyjVmeJQLD6kVRPJ6LT94de1kr0z+Z6dZPPnsZCrLYbg6BObo
	 CtCWUr/YfnbWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F76C43217
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902665433.5310.7466428543701662811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba0e3966c8ef2a05d69374d0ed271a4e5671563f326a797076e8e5cc0d67e2c
Date: Mon, 21 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669026654
