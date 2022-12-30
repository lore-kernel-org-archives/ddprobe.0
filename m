Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD25728F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A85FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672422687;
	bh=wYUJ06iNSAQwlgb8uE0AQhfj9vxckgpBQIEt/2rOnVo=;
	h=To:Subject:From:Date:From;
	b=Iizk0tW33pDgCi/Ff5oSQTlsKUNOu4yfIQvZyGpB0LCcZno8OFUa1QEAvjo/e6tZQ
	 iH2ulgom0XWSRwhna+lxMd+/pzk5aExmfOpmYBKh5ghb6XherfQGvsZASr6duJ5/gw
	 SDcNA/GUe91OCR6x3oYBfPiFG572zn4p9ahrPi171/mSHV+2g4mSB1p0lALF/sr97r
	 0SrqmyfbUJLr9Joqmt5/bbzOTkKPqvdIlGdRntAQcpTWwHeGk4zf+tMO6V94WCocyk
	 P5LMb7XqKQUdcNPDbPr2fW4y+tEol56Ji/R2AsSF9QCUOQjtlYTuesfjBkjSAPXMbb
	 NrEQTbBRcGX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A4BC3DA7D
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242268738.30823.11185677510805356254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3401a0908a515f3c1e2ddb5744c0fdf5d1232d8c6d640d1841f1a5e029a89a6e
Date: Fri, 30 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672422687
