Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD3E23A9
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6923BC43470
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667724654;
	bh=gPwWI2hGJtaueha16hCrn8ttnorRtcXyeUjTj+uDEto=;
	h=To:Subject:From:Date:From;
	b=uZQQacK/PCFz7WPO4DQTM48i744qgpaoxAvqwRPA1cPXn5BA7lQuruK2C+sjrGDuu
	 66MPltNmS+YSSnju5xJ1J1PpFrVMiU5IUPXhFpuX74FhsgSEMjH/PDVVrV8pEI6Uod
	 c2Tlk4F3IbGESIDDHWsamYBr1PHuByhzXFUDlwujHcBtDv4u/WnNKCdeau4uKidxX9
	 6bO7e+PGq5nsQma0Vl+r507j7zlf1Idd5WzjquqpMM0gtSvr1K3QwiotSmHxCy1gwT
	 BiB/+uZzPmJhTDMwxweYgrNoHBZRZUHyROgVcW7m4CMTx8+Tbni37j4NZbGkqDpXRS
	 /1BdsgGmuG8OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F018C43217
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166772465431.31741.18023468908785728800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddc09dab330326337b7277842a03fd93abd2b0ce641c78132c225b651807e0b
Date: Sun, 06 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667724654
