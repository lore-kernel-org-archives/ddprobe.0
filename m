Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8561FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74192C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665310853;
	bh=rL52sDVoHv0jErBZlA42n7mj6YpUiECWgn7kS8gh8s0=;
	h=To:Subject:From:Date:From;
	b=oOahpUliEn5haJTWgAZndinGW+ExXZCbLTjMzsWtuyqIaNlhR3/WZ7hNR66T4usm7
	 e2Fny5bwFWil66JXgET5+/ciM9NwciFOKS2lVFQm+Krl3skEFQ/JufCZ1uQ+9YCG++
	 Vz7e4YL/C89xCUpICmFRMGLfn3xo058yaRC9kDqoIVv7vw6Ys5xR15FSTc+BM7FfmE
	 YC9yX9CeKW8Sp0Gjq0OWwpLDOLvV4ToJfU/grbVf/5lvkiPLaqQYpdpeBjNeDIfxIU
	 KmGuTU8ho11KefaI4N818ePtOPrUI0cUq+Beb4tR/ze3Aze5OMa3HCot3/6TsHDaYg
	 n7f68qLPyaObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596B9C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531085332.32210.16101273579471914347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ba980827deea98605eec0b4e29b0bfcb315388e30dacd5828fa66d0b0c68f3
Date: Sun, 09 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665310853
