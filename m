Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942D23C4
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46B0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681657625;
	bh=OBqszNPd/lZKypx4DuEd11xLXb6xfT7mlMWQG9FoXt4=;
	h=To:Subject:From:Date:From;
	b=VpZ4iYBec/Y+e0ZDtaU3MkbDl6azknx/sbyJ6BLzgmajZVgud3cf6fMVoM32wDZof
	 BV2uM53sOsm+jdzSRTdE4MvB4qgiUolcIkFaksZVgo/xQ3acI9FtAU+OTfo2OGZzjO
	 OSU1sdWmfvSR6mVqiQm6u5Zk66uGYetWMI+vJBS7YozvzF4SZeNotXaRaUcSw/1Khy
	 pG1WVEIRWdmREHmhoWnN+GoUG/teHqGwk86aHVa222oCKtixqUze61A76a9VbSv/hg
	 jKp/9abT23RPLrGVz/EuF0UY8jyvPYHuXtHxwfXslfumD6IG2tQsMXeafSW0l+v3Qw
	 zCaKYMnHfi3BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B883AC77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168165762574.2704.13390097617201461441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86aa3b7cce2f6d5b5a901d48872d069074e7f83cc2badc53b60f75ae376dd23
Date: Sun, 16 Apr 2023 15:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681657625
