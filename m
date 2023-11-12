Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF23847F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcPF4NT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FBFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699789096;
	bh=wAiVq3BkUvcwEavr53d42D25g9iovuOOSIxHgf/7vLg=;
	h=To:Subject:From:Date:From;
	b=ZcPF4NT9fh4SHEOyjmwGeRnbqIGEECVdKTV5x/CrkJyzruNKEjKyR5ZrTb1I5h/JZ
	 LAlSujYXF30pqbzrvwonKPOHdu3h0IMaEwtRZYSJEIiqSyp1+VR6sMukZPRKeDHTDe
	 Zm/ibu/SP7lkjcGO4nlSQAiaPQF7T7sTXsdd5D0rfjdalHnzTolVu+40lhGm3t8ISw
	 1xnKJ3iJ3xKNYCfHtLShYRrf5/3osFatyhoFp3AnvX0/LwRBNqFwzUuNV90Iu0c2AT
	 0urKW4+oswR+gPcCPKEdWsIvAtVU9+TIinHBxhhHuqhm2HC/MuY/XMekdDFmD5cC4H
	 ucpqKY7oHgNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4F1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978909638.4780.6855749774734865424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f550ccba972b3b890c05eef255c3b35439206b819077179636d836f3baf6f0a
Date: Sun, 12 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699789096
