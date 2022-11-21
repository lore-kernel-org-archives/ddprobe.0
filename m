Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4C6EC0
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A532C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669029054;
	bh=E+CCb8iZIFKVnCERDOcrssk43UlfjH6XftXmqwvvMv8=;
	h=To:Subject:From:Date:From;
	b=O7DI3jE26Hk+6de938EbZl0SqLFIxik3PYPWsoGrMITVsLR2wH1omaVoiiOR93pGb
	 yw141ubZHczxM30Z98a/fwR4turm8CNySIPzUtByZull+KuT+SefBiKHrtsbjfucrU
	 R2g87qx3IF23Zuokp/7REWMjctHFTJdYaEGlApTp1RYi9xyDlzdLBcx1mE0maUqu82
	 +ZiEZDyk7L9ET/lGtevWowtdBazed79aG+vSv3Qdkz18e2kKRtklXfSujnkoFdVPM/
	 mg8UMLGdgbPrFqowncXFe/sArjUULE75KmCj0Gdm4vOXRD7Ei9YwuCi3o0j9XXcIJh
	 CkhyRX40o86Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50642C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902905432.29086.16604087688348109176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be1b17ceefe5a3cef8ed7f9e264bd4526a32962816d1bc3b42a969653da9e32
Date: Mon, 21 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669029054
