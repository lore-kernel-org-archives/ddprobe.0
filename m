Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477B7AD5A
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 18:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E414FC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675533965;
	bh=yktFz5hUKEWFDsxFBeapC607rO6skc46SUj/+dvUEE8=;
	h=To:Subject:From:Date:From;
	b=VKr5xgImGLA8kL8ez0pJX0JZtmwv25uaL0li2RCm1rnorU/kY5y3a2rsX6j/mpO4L
	 84yrJCjkxPhHc0AtUPCPRV0XFrGm0oHoYCk4zRsfi1l/njaZUIZ8u4NAVo9wvsF8h3
	 U43N5w/qA77u3Fd+3BOQ88adGonpa5GKSR4WbWxBmsOSzRpE+rIbWqUFehD+U5iqiD
	 m76BPypq6Tvel8FRXT6mjikRN/31SN40S/Y9zga7GAvbnnXmcKPfzJnuj1vF5dX3bo
	 T1cc32cYRZ0PsNOz6EFgZZUcDsNcWTDswlDKh0Xvx+vwiTzaEz3k21uxi/0LW6cJig
	 7Xl7w9RF0CgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AD5C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 18:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167553396579.29486.14641326255977115459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fb9518266ee6b6c20218091b6bfcde83153784898ebaca73d87ac5991be607
Date: Sat, 04 Feb 2023 18:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675533965
