Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE34375
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8121C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692320048;
	bh=kZa4PSNJnTIKCiXX9HhKfxe6TCJ+nsZfC4abjauMaAs=;
	h=To:Subject:From:Date:From;
	b=sLFQhj9eolKxcBUc4JF/tzi5RSQqfce5flOFgGE0loCBX4Kg/jLN7WgPx5BVqRr9/
	 V7LmtqzNo8TZi5Y4Dn0n43zMFVIU5GcbP6MB9p/vKp4je1u5Zq3CdfHGJqzNlI5ous
	 aMo8WbYNgprZHzisowBnFV/Tk2wksKKp9prG+CSkRAJq6jkTg4uBFMJV3MmcMAOCc+
	 2ZrL1EkA3x7EftnPmanGxoIHlpgor7FBVclV4HOEWYhpZHoGuN9T4uSbJzPmnHrdCM
	 9gW2xEMdA6/W6PyuLI5TFSuNeke4tFjd5BSsnSW10msvL4RVl54xd3ZHUWBLCB2RcI
	 Aha911yYQxguw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AEFC678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169232004868.12075.504710372765028738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4496e397554e9b40e8a5a63a527da9ac0109cf77f4d8b6de4f082ba77612e5
Date: Fri, 18 Aug 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692320048
