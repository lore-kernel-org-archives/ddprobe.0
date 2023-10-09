Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A75B8827
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Gtz3BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C82C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696847228;
	bh=vk2jeUDLDOzNbJMa26d2+R+LxznB2Cx3Y75XkLCK6wM=;
	h=To:Subject:From:Date:From;
	b=D/Gtz3BJaMdxrocF0TnLsTA+qy9/+7SFa56S4ttVwMvJpOfcdKotuUoH+LsZSLFiN
	 68qX5NEk3cv6TqOcKBi3jnPrNDCXeGHVFQQ1smFiSCFZfImTHeJGFz2Np3BnlidskB
	 qVLUis2gG1/1XOs5vdnhS6NPIZOiARA6N/3802kNYuCVDjCY8L982j7L+to2G09Knh
	 bM5pZt/3X7uV5AHczWy5ZK87oh7bU7/d/sC6OULWKaofp5yrl2c/Aw1oR8yw+Toqu1
	 i8j66RZlm7U6xgcJ34VuLd/nZkkVV56qs07V5Z438FxEKTfCABrev9BLAIROGd+f+r
	 QM+M9UMwUmCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB94E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684722869.26055.9016285102844111284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b27bf7f8ea02c91f761c8eead21b4301f1dd42cbd17657606be215d025b8188
Date: Mon, 09 Oct 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696847228
