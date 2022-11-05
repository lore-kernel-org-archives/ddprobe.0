Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C4D7F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78980C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667607054;
	bh=07+zoogo6hBqVLIrHtAMDmQ6vtFu4OK6T9JzgJz6PA8=;
	h=To:Subject:From:Date:From;
	b=MStzaKp/9LJ5yBly2zVowXffjBATJYtN3ge4qlCwcEHIO72pMpA64SPoPR1Lp3Zlk
	 Dkp4yiwV/79LN6ut2UH0JeZ/O+ePuvsggIR/dziPC9fWylcTgyHgGxiIZ45kvQBp+d
	 UX1CXgnQWhDS92AFA28nO4oPgVNdAQyyqpsemmDyMSd0BIn6axYDvtxb6JHQGNmaH9
	 mQ/4yGoxOYQqExLvit9C0ohH9q4j/ueH/dwc0rilUNYnOc+fZcvX+9Lz9nIYZdBSI9
	 utsBUsjjOg7boH1k5tAD/TJkymKjJnel31L4V758pHgYTJeoqwgxjpABuRaxXQ9BK4
	 B/SQf8BcluVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2B4C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760705435.3862.14488153418237646119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dd5f5d200ed68ae83dc6e2900ac58c78ab3d3b0a2e4fcc781b41f86455457f
Date: Sat, 05 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667607054
