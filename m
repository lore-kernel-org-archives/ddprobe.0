Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5198314A98
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2zIqEG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E2DC433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696586828;
	bh=Ncd3BV+SHShggdO+hb9Q40IINtngL6a085rjBCvKj4g=;
	h=To:Subject:From:Date:From;
	b=Q2zIqEG1zhK35hG88Dk9FLiMpb90x1OfXwjuJIZ57Sr3sRErSYe/CF7wLajbYZ7wD
	 iRPsJADnkRNWeCB8oXx4MUN0sYjq1l3t4fCtPb4n5DjW1q+0xMOebsLu6TlPJI37gS
	 bAAY7cMEdOiDv6xWrBVTY7Nmp7BIuDxk/21EFaU6TcMRkvflYMqI0+U+oAeDvKpOaZ
	 vVli+dybsegC/VOoPfHHvjDpQodj6xLWUHRFps2d5ZpKlV9NqBQ9CECFMBtffD5rOL
	 f5zp+zrVq47EFYTnGX0la+I5jK74Nj+guU18SDTiopm1pCu7d+x0WLCe/xKW4dEvoh
	 Vu1IOlSRQuf2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB20EE92FFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658682869.11464.6246312972579860363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51abc6c621d9aa02d84ee0b6627186acf52b5cdf506e52b264a17fb8cbe9aac
Date: Fri, 06 Oct 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696586828
