Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BC77E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 02:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0677C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688351768;
	bh=4lChBtUR/YeNsMP+ltV+tG90233xFJNHXFtAlMsJ2v0=;
	h=To:Subject:From:Date:From;
	b=QmPjfeefpRycMEUDqO6yzYECEW0hJQWChSnY1vtfQTPsTFMJi1k4uViz1OsIQMRjZ
	 cKLGUNqcgAj43/vOUqQyAxQwpXuyEC943Ij8bmcyNr/0UgUHJmnTJ3bn4HrUk4azS+
	 j8d71xK8x/pCQy/+gahtl5GEMBo/HjQv0pXLuIFpwO2JLOFAYxSurR3RWVAN4fbxBZ
	 dFUuARYLznrL2Y1KOF24rXEVeZzD4MWgwLJCCyFIbElqB7sKEbdRs+jHOz7y5LuYTm
	 om/4ttF6weua5aO7Jq3Lc3ilA+V3gJOK6iSyiqdM2QVaAF9zjmvav4+uOG4Mdc/hhT
	 HAG79x00ZeDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B210EEB64D9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168835176872.15123.2587891256088260605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbdc80b4bf93e36072f1a6faad8d0d9ddf98f7f2ef1826b1e088abec0f8fbf8
Date: Mon, 03 Jul 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688351768
