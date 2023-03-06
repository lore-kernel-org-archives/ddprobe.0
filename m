Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E49566C
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CA2C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678123025;
	bh=tcI5Oune0WienVb/9OPR2S7J9QJKGY7tgu8LPr2HPM8=;
	h=To:Subject:From:Date:From;
	b=Dpt+Enn2bsYCi998f2xRnIat9ZufgZP5tSgT7f6lmXO78cws8dBcn/iJ0tSJg3fEw
	 8p0WtgTvHbKZfw1QHQMfHrlaTsSwfyYrc2tEx7PY4qvzry5pcZQWtt0AlYtg1AKaRM
	 MFOSDQxFPnY4YNBQ49+1jmOpi7yQqNlF48zyp35buWpLW+05xmgNW6URGwv/LONMvv
	 nxgBSBwNWIR+rxeou+Q4ylzdcwiqGFYt1kOcCGWAxiGRbctmQhiDFMYXtjX49oJNJD
	 oMhoBM7iEFq5pPgnbEIwT9HevZcjJaMP7XpgNxoZ+heDRTra3DF3gKvnqldhTFg+LY
	 52oPRJEr2enJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0B6C64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167812302581.16441.1203698521002541929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aab7aeb7f43341c1270e2a9965cefbaff63b74eff3de3d75ef063e672ce7905
Date: Mon, 06 Mar 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678123025
