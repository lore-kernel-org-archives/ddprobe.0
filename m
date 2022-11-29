Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C611CAD3C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797F3C433B5
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669737654;
	bh=Czxu4jvp831SX2/2kwORSQlQB2090H5ifPQpA0rZS7A=;
	h=To:Subject:From:Date:From;
	b=MSw9azQNjsRzLy7rTePA/+1XorzpQ8NVT+VdiC558wDsYPyKi2az4ZKgHrG2/bJCV
	 QmeSSM1xUW3PVr6oCmLJPMGeISt4cafjPppNo7rZ4yiuR3wUTOosWi3GJZQIm8elSv
	 wW/iO3DKcICpWdLdXcdkr+gapmro5UBGt4Z9fptt5TmucHQrptAXSuc/R/8e7saoiT
	 hrETP6X08oJeqXl/78ABmmcP4hntocryrVSNqC6p0eYrnkAMiAOZyahPRmC0bbq3Gp
	 LyQph09FdYNGpV2pUUqqS+udAUmGHleR8BIj6K6JG7VpT0n3HOwfPEdheCxiN89zyQ
	 7jyImcX2sMwVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57610C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973765434.20655.13110515373606741681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d587b20f6fc84461a041afd8526b4843694f848425053ceb5b3478f827efaf02
Date: Tue, 29 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669737654
