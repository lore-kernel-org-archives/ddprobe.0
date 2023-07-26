Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFA518045
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 21:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5D4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 21:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690405328;
	bh=qH8LiMHOLATo1i0mqY649+TcdQeS97pb/qkRYX++x94=;
	h=To:Subject:From:Date:From;
	b=dx5UYpjY0BCNTvfHqVIWLtVCFG1KJaJY0qOgPt/Azky38qzv0XQLz99Z7mxh791lE
	 slt+VV7xS7XDuXJDgSqK5yTLNw8T9m9+DqMtaaK4d88IdEQQThCcEFiVPy+kZLPfiD
	 yCTHIVL96otxq9DmHv7J+mJaIuiW9pL+scCOC6AqBU07qXkT70OyfvNOylM+jyS9Fv
	 R9bEYCwh0sWq9Kc9tgp3mTFhvJ/0f01STv6SGehsDVpXL548uR3XeGPf73FYOr0wbx
	 88L1mNjgxz0Z8exXiuFMOhQFTRubo3pRWVtxlcsE7p1DVeeLGSMhRmkBmo3xbnKXKy
	 jIZ89baM4ttJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56C7C001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 21:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169040532872.26476.652219729201805723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20c596463b1af1f30ee51ac5005aa3b5a62ac7e12a195d792f5d62d48248153
Date: Wed, 26 Jul 2023 21:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690405328
