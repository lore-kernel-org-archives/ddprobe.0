Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F2F747E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3231C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679674265;
	bh=+LQl12SP9hyid4MIdzLaGWWvkVVEhYdqUZn/qdgTzYs=;
	h=To:Subject:From:Date:From;
	b=A0lKlg7qzMY2g5AXl+B/t52D0gd8PsLjbr+komMVXfMGLigyH9/jhIX+bzDpoj6Z1
	 J2x4kqMCWFckCm45AvhSfypo+5onTh+/vxxnsWDtzerGjVtFnaKtsO3SjCgOG8Emcv
	 PLNoncIcYp6UaqWDV5/EfvoOLJDn/9pBG+r7wAeNYlHGAU/YDGqe6FXdx4SilUgics
	 +VjdAsRGb3w8uIV0qWsEgqP87kn1G2rvywVr1A/7/hiGRcwhYyWw4N5+r1GmxxN1IJ
	 ce2x5dmIhQH79RcemMSy+u1oObYb6/QdhLwy4Ar2LVg+nv+nLqwQs3AqEovvSOlbBO
	 ApOlOV8kVNL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF173C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967426577.20932.10103907387733974024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd84b61c3f5dcf375c25c5134d1eac17da48441f2d1e36e13f6371c3b7439657
Date: Fri, 24 Mar 2023 16:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679674265
