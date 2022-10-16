Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29987B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69934C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665880853;
	bh=k5wC0zcqzbtIIPKsKCPTyGf7xT2jmcx6Ct5ojyryFxY=;
	h=To:Subject:From:Date:From;
	b=uy9AhetYouadFxbwNAo+2Ei6FYCCUoV0tQ4ibVCyxtPyUQ1H0PExVUltNbYWM2M1Y
	 rM9yPb27hvS3COwwkxMUM/ST3uhxBKNfMB4X+kLQMrDejp6Xe9plLk5fYy2xbjLSCy
	 tqVaHP694Uth58gwgXmFuLrmGv+BZMhsfkT7wXMfCybsY9d52WcX4GSH5vUiI/K89o
	 7PXjUnGUnrFr6k+nMiNUgMVkhy7wCBLu5fECIn/Ra3fpnK8SnVkGeG3MVXF2dSyPEu
	 YyIuRdBq7sBuI29rz1ScqNWdnutgOaQkrBRjt7eVoRsvfvQ4VS6Kl0cR/Y7oTfIz37
	 D/i1XbzJdASOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F995C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588085331.11351.10493074807009122966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ac59709ce04c2198d01f30b6c95aca2aa3b0d886672938bdd0b04fe1d7b6aa
Date: Sun, 16 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665880853
