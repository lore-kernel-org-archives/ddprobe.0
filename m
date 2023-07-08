Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1CBA941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBACDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688847428;
	bh=MSl31TE04SfFubcEzhWkKrntM4vp3XNbFG2173nSHv8=;
	h=To:Subject:From:Date:From;
	b=SvseKgm++iL+WlS8Rl1QWsH0R4irBphKcRzX22rvbtEKwk67N1fmAYh+AcUz1eWiU
	 3rRfSHsFW/GLAWS77dDxdrESnj5S2OMo3c5hbDAgmoPofO+6oYz8bTsAWXBb2tpTFB
	 VirUCopoSuZ0DixczhizvPdCJbqVoWX87rHJBviGCmPfu9+SQF75dnLy7qNTEnnPAe
	 WfVvqVUH2EyQ5N77OuK3ZIAa/8NTP9qbRVkXPzrcJ1wVXMtfM9ZDfuwNxkKQNmkQfj
	 7DMBdBxgR4UrkN8yKc6IhrcV29pOSNV3fhBSfEfVN3tphy+Z+vphUbBTbyZO395jfs
	 Nhn4LKN9kwC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFBEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884742872.17498.11886803395466012663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8ddad1071d8848024e2978ac9f7e0fff9741412bb6df7f103252f0fe3b6125
Date: Sat, 08 Jul 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688847428
