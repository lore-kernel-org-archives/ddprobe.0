Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08504696
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEC3C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665003653;
	bh=/69nbcCJKpDlpTnq36OPSs7f638+crHQ/dTDy7QIaH4=;
	h=To:Subject:From:Date:From;
	b=Z7QmuB/29VqIw1jkwY2N3gx1gnQVuDJkPm/AzEtfgED0Fg0qxucCEaS8k73tr3r83
	 aXm2ZFjOlLDH55RZzrGFXUWMU/zfEVB2Eem+HFBSCmHn5YUv/n5UOciN/MiE3uV99I
	 hy2kq665DqA6cE6TNHlcx+7mOnL0+7b9VPnSDs3zjkVafIkKWOJfvzUOWUcmGCqdSv
	 0XIC9sk80LQlWPVtf9VdKWhtd/dolrx+cQGPrjLw/lEqYP3pG78ueTIMdZYC+Wqprk
	 H/nYEE5L+WT1dwJvPlfz5CRcm0JF/PikLJncjCet0IaQJ/LsO+KrUR/1djKKca3IdZ
	 HiYx8EmB8aSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64385C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500365339.10074.10150982179258442302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa3773754525e6cea9934f3fcfdb1b47edb87a1caba1a80a8cede28cdb74317
Date: Wed, 05 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665003653
