Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98CA15A4
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70290C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664700053;
	bh=9lZj/Bx+tfFFcyLkq9H3JgL8fLIxv5cj2fOv/Sg2h74=;
	h=To:Subject:From:Date:From;
	b=NCjzaG+tbA98devup/ELpU/AwdkFqcJFzTMgytGG0CG24MR7K1N51TgsaoDGd7LCJ
	 w/n6kzla4L775iq/X7KhityYq4sIaSXyHhWvqaTg3XRolMOy6xJVK7BOoB82vvhWT3
	 mRcOsAJ8hyWCEyoiLCTei0qaiG3feYHmP3zRqW+Z1QBMUNc5ceS2Q3cCqbKsCwpo2G
	 Xar6DWbnOFYDv31Nys1MFjg99TkHNWjN1mnInWsdE43o+McD5z8iMi+gs9ndymaWDN
	 rFNnnXTz5fTVN+8VsY+gckCdNedVA6e75U0XiK+ubKQvcGq0LX5zJTilZKDwtdKxK7
	 s4VIlBFMowUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539FCC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470005331.10194.13774997486170710754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbaa4e08324dfaa1af2ce3328e69ec1adb831217babba7c4af02bb693c43be0
Date: Sun, 02 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664700053
