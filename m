Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7152574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78172C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667056854;
	bh=nKvoMabksWvp94WoH3mvgyVKa5v+qxJqqOG2x4o0LKE=;
	h=To:Subject:From:Date:From;
	b=KYTIGmceL3L5xRRMgYfySxK12iC4gWoCjns67G4WWYZE/ypIOTTnzQPK0xEG3O9zd
	 96kxdu+mBgXxQdvT+RA/f6m0Y0/NcxHzE3kUdHwvwXveyRCXRSPuLg2CsBVdYOGE3K
	 ksBEsg3TSK/Y4kSJIbmsXj4DlTRyZP8hQJpWDvXsx3hr1E+2iSUiq01ELL+6xPqbca
	 MogSm2ZFgkm5mv+2j8N7I2JtfjXIS2lDnhiRpt9OJtlH0TSUXNegLouorm2UgbSH6s
	 wSUp8vH5OQKud6eK+ADM2BsSzlNkv/dnjtGTu5Z4MyKs5fN0hTz+E05Xo629RwiCwp
	 d7VNBLwpsDu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA5EC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705685433.23034.15935632433253001513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b390d32727c01d42d82db6ea7a1d3353ebcf4dff395ece870b984735d369c668
Date: Sat, 29 Oct 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667056854
