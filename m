Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4FD19535
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 11:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA01C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 11:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683804846;
	bh=AY24Ca+wIDouXgoAJUl0/7JuIbxO5QDEpbdU348AXog=;
	h=To:Subject:From:Date:From;
	b=ZYr1TipWFbbuI5/DcOwmvI+vFJgLMiPd6JY3Kcmt+zLkOOofxI9gEp1otRm5gHgsP
	 6SbUz1GT4f6WY7SgrsXKRDNsd+83HG3kX9pCM/nd+9fYsZ9yt4caKRtJQcf1ZwScyG
	 NWNERfHHobujbLMS0mPtEIjM3l7Qdrh7VPO/W/lmQZeWB0n0mVt1s/unXj9D/zPtm/
	 C1cbNmc6GaxjRs9JtLaxM1851MAVVdLkCaNc/17IVToKfd0Enw4ZqtO7avrfgbzTZ3
	 1KKvBjV/1ZDj009Gq5eWIGFyHo8lnVL1WPXhPzUzboEx22lPQ7FdGMLPtDEebx2Kyd
	 HFi6XCq3rTm6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D51C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 11:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168380484578.29741.3398995622976447693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0cb728bc3f82ea7cdf2f3dd8924d069f9dfee9aa897732063b3d49355169ba
Date: Thu, 11 May 2023 11:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683804845
