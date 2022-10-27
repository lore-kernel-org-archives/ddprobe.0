Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9D81366
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9CBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666881054;
	bh=GYQd/3Jz65GMbmtEYJoTwVMX88eaINToQIiW14BAuek=;
	h=To:Subject:From:Date:From;
	b=pcxVNg90QUsDxE4k/g6Awmj4zgf2Od4k25poKpZ9ATl7EWO6ZpbuM62TCEjo0vTLb
	 ucZKhHwcQRXkR9Wi9LWEDTPTFrcUOBzncj31+rpR/rzM3DTF27qIAcS8vryiYJUIcE
	 LtmL6FADqSWHRxPufgjl3MVl+F5/0wOm/eQW/Aj5+A6y6DsVBEN0do/N+TjwVNZvVa
	 uNRyXJOXd3SeguzwTKPHSb6K/bZ/RZ5dTlsUWOjK5NCmAOl4AR0GP6AwY6T+7vwF2E
	 oNTNOLZoYsUD4OiPUctfwSJ7AR4KRvwjZtvxCEnExFiHfQMBpsCGS6mft+PdLjg7Fs
	 1fBSDj+Y+KmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CCEFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688105434.22517.18280032727494846492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e087216a4553cef39495af5e31865eb3cb2172aa2ae9ae4c9acee821a8c878
Date: Thu, 27 Oct 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666881054
