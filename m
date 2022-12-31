Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98BD15AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99860C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672447287;
	bh=B1+KD4dyV4MgKlCq5y8m9eKdEVT/Ex7PnM/bTgs9l6s=;
	h=To:Subject:From:Date:From;
	b=YEN3PykMsZ4CL4QmJuBWBDuLGfMHRYCapdi99wogX6BIMBlV85kOKSUIod+6t5mxg
	 mBbvFhwO/MgSxMm5c7FcUYVWjfUwNQoggZGPFf9lje2XoGfO8DiK/5toTmnfJW6v6n
	 XpmumKO/okMM2WwhnTlkJ1kpL3VFuby3yVQ05H1aEeGBF98rIYZZdT0Cmq/FP5p//G
	 50n3dx11lURrWuF5k9CWTg4YhWG/xFhgdsLnBmDVyKlvZiEfw2jKTXczrG4AgwQ4Vs
	 6nf3m8VIkIXvLuStRLVxP/qTqCE6pPKvmmuIxUh5yLNs7PELe1ksGmijJlh/oC+vzV
	 WaXSRUVsydIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7830BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244728748.11523.1850621674184175611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6580aca65b7c534bc687f982662ec30449b0c0b08a6dad1708d140bc6801c2
Date: Sat, 31 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672447287
