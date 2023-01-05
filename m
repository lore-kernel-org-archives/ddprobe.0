Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC79C80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B2AC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672903887;
	bh=cGJnhCwv7TQRVC46aNqgq/0VMG29lEsg1CtWidepRtU=;
	h=To:Subject:From:Date:From;
	b=MA8dSvqp4R6x+yiRDMKKUVZH0wTQ9voW0EspAyji1f+nIIAXMbZS1zv/hrzMV67+O
	 g0ko/gS1OtbNqDFSGiRmwojeUakCTklhMx/uKsi3DhUkse6GP/uoNFLHyHijOrpglw
	 CGfEqEVkRpCiYpphp65J5lOdF15DCNFNQl5fFmIf/+vDEy0f5z4VGK7pBc1Z+k5hga
	 pA+MR+dBK1LSOgEifphJLkBioFVWDDhlFARC96COvOM/cvWG7TOo/qGVEKn1zxe3cb
	 4f4rR+cUrzFNEhUmTymXR0G54vpgugOYUKR6wdXT9Wmg+Mb33QeL58HUSCgzyaeNak
	 r0jJEyaHfe6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685C1C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290388741.20440.10785627303741818323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f11a72dd2e267050b3a1d1159b03950a257ef18f9be2d194b12b6899c464f42
Date: Thu, 05 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672903887
