Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91802C698
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711799897; cv=none; b=bpZGKQSnGIXK7LTfehqXKF2ezk7oOHFt7HdBrQ6BnsUUNofYupwtx0dw8+CZapUiczV2ll2cDZRGd9u1S1UetSzM7A/mCNQ7q4z+vxpAfv2T5OZK44Lcee1kh1JHWuqqOoYZeRm7G2GAoMSVr6WH3SjLFruFiHOX25bTidXG/CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711799897; c=relaxed/simple;
	bh=1Tfwn0bO5ZfqXDelRflmrStSJwt5VkSfU/NXoUt1W3I=;
	h=To:Subject:From:Message-Id:Date; b=Kq6zIIS2EKv/IhF7JJGS7mAMNcYr3k1Fs6y7kooQkvr4brAtVyEVIrAohsnt9Kf+S78FLs/hJRbOhSdRqooiCMHU2uIwYgWFnt3aP44o5W16v4V48Uk19ov39do299L0W48STccEOpG+7B55oN84mEo65jbXA2mDaImCxS5HfW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxmcPxzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxmcPxzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B968C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711799896;
	bh=1Tfwn0bO5ZfqXDelRflmrStSJwt5VkSfU/NXoUt1W3I=;
	h=To:Subject:From:Date:From;
	b=NxmcPxzYex0Lndw9c93+h3lbzDy138kKq9n6Fa83JFdO71l3lQ+s7aYCnXAHQcinG
	 Lu4Ci1DL6pyEVvl45M+TdTr4yWl9fvncxtqtGyBgOMO+yAP0E2Jb5xn5ms3BLQyB/8
	 zTa6pZzgAHEdqr6/JgbXhbgEMAFdyhGSBB4S6cR4qX/0GZCSW2L9P4rkkzKbSTaJux
	 1g6osFsicpVqoPhhs3OuYRnPE8rKQmBAL5aYCOqbf27QpQPDKQRcqOJH+jKUqrSiih
	 MhUwAhaHBgnOr2GAAmWX1adna4r1HwEto8MqHF7MfVDZwR/53mZEeAzmR36mGzK/it
	 O89kSF9YMvPtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75149CD128E
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179989641.2570.13122533022407005740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d960ad0f1ed6a6a98a5ae6e517574231c0bcba239f99dfa02c917d1ee4672f7f
Date: Sat, 30 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711799896
