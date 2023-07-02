Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619AE361
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E2BC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688295248;
	bh=SSTNkJEDDlpSuvoTcCwcje+ZwJTt+JwcMT2J0WpmvU8=;
	h=To:Subject:From:Date:From;
	b=LbPK1CezAcFYbV1igFmioRcKBSznrFyxjwiA5W1SoTr4dsLIlr95K41R0FWBFwPMZ
	 f3I7JHH5viBQ6BhX9VBeLF8TLWqzJ7w3rSRyJECJxtbBkQfyFbS3XrpPrWstg4nR52
	 UG0uE4eeWuJ0JGNSAHQTmiI4VaSq1HomwMGnmPuNGx4N7d9xW/km0D6c0gIaDo+p0A
	 vowTIHVie2Ok+e3Oj/zNvd+fW3c9e/oyg6ye6DmLVe0LtOM/YtTLy5TMYiDsaFz4mk
	 P8pWbCdctHjm9f5ddTi9GRLy6zNcEHq9FSFuyouTtyftJhrqtIbWT6zaxwoepKO+1h
	 p0ySMfGyJeMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B2EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829524868.22909.10008786212194943403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e421c24293deb8846f88222b2a37fe8222784aac0ff02dec6438197c6199aeb6
Date: Sun, 02 Jul 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688295248
