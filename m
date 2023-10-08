Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F51BE7F
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FizatKe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C32C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696765628;
	bh=bvD/LxNdWGDUhR19f/a6k+X/zat1VloQ7DtPP/NVpjs=;
	h=To:Subject:From:Date:From;
	b=FizatKe/ncCe2VtUnsifdFVoouWovY63UwdsTyRXQvzW7I7qHIHhPSDiQUOIVjUVR
	 0rB5naQaGJdtVn4jtBtT66Xyzx2FdxWCQyKqitPJw+EAO5innkVgDDilaW1dQWMZO0
	 AqEuFd7pWLUMjNItHAut+LdUKqPMRYXBv2Gige/ej1tbAGn5QT0WrfCtiHP3GuRwRa
	 x54Wleo2fEEXnXz+5MpNax/CeBL66uywm2nHlEWq2eHuVIv63HURX40nSt0VwnfajM
	 CIBIUq2ZNYGbDadJXsmfHLXNogN6UC6BsisvQ1227ik6O3Zb7Fh6nJSUKlnOCRy0d6
	 WKh8cIh+rGsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F7E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169676562866.30100.14325325589008981417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6f29765fc0dfe0cfe686a9ffc9dd3fa15672a14265362c9c61bad16ba96692
Date: Sun, 08 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696765628
