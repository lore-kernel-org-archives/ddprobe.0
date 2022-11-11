Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2D21EA12
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750AEC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668180654;
	bh=ydkDW2Sp8NKDsECH5wvD9bzl0aQdSpjAR/bU5AUQ+G8=;
	h=To:Subject:From:Date:From;
	b=MVe//GUG2sw/36HlkUpfAP/k6nRJRpubBHQURecrYR1TY3CMxVnlIFEmaTPBYCono
	 bueT/9DPWxGCSpAZ0cTZnCQQan48Bozb+uxLrUJrrd85EAex1QMP0z7rv255o69EK4
	 Cj5wIH67ZRWV6VcCmQu1y+NbIiYPlwZh0403xZQIA3XGgisFJp7eFi0cD+qKny66ip
	 aApNUYY754LEnwecIoGbnBDFgGXPlFvoFL8tA4uqPfdnVAyekIoTuq5gwncxO4fSsu
	 WmqL1Uq+LXQ1ASqL7uQ9Ysbrfx9xUM14J4gCXK0VQcZuEwnH1nDKFfb4Pulku8AMoa
	 60tM/PDOWZZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D058C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818065435.19958.11194281012891328074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99b516c8f65a93ecb14b275bf2fa97aa71606fbca83041c12c950665434f6ef
Date: Fri, 11 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668180654
