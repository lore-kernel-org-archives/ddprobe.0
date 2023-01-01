Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB53748E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77096C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672614087;
	bh=B6gpcWM5fZb90fOPrbKx549Rr8yVb53Zv0jGpJd/BCc=;
	h=To:Subject:From:Date:From;
	b=oZAcsEFFMuCnedFZY94xn+ACaATKGGLLebyO/9cKTJNLstyeJv+VsbbdT7V5W6ugn
	 A81XcnYF0tEYWBXx/5LOUnsNojb004jZzp6Cm6b69QLTWg5Bq+sxZI3EU5tDDcEdst
	 Na4X3L3+76QboPloCvjg6zU/6GZt7Ti9RMW1CvE9keUbkp9QkTwPy00RJmfZxqriv9
	 XFIznNFfxbuygr3h3IsAxtPmJ+C3IJMhoIS6gTPsFjNNG2hT643aDyQli9eiRPRzwZ
	 45j2Uq+/BQHrUvvOYp9hyKlnReGeC4Zqw9KMcDkqENOtsVyKwciKQfTtES6Iq5KetX
	 Q7IoThUnbsP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D772C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261408737.12944.5476424658356138766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3acd23eceeaa49ccf0920d173dfed6a1db6de951ec8aed845169b8e0ab4a09
Date: Sun, 01 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672614087
