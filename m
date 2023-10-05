Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA628DD7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRt82Uac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2816C433CC
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696541228;
	bh=KLicPfuSHyqow7nRpZun8RTovCar/eWmJEc+PLWVzW4=;
	h=To:Subject:From:Date:From;
	b=GRt82UacEIqTfGAvLNrK1IYJOBrTMgaHeEecHPdCx3Gbwkuvd7xTq0RRwehd8LI2z
	 PWyj0niuj62nyA+5m2926Ci3rzDKlC/aVyhWS8j9o4Kih3Tk2dshX6O5Tg5LONYXD+
	 EkhkzcelxhhRwcXa+g4379eeW+lZ/KjywAt17OCWcoZIfdqWB0tSBVaourto/9scWa
	 gHIbGVjMS5dHiHEsF0+zsqe2XnkOg4eLpVMTWyTCVAmqErqkafP8CNqIYuqQ5u9XmM
	 TQhnfa/bbdxPiSzdQetZBcJqQrxkb2CJmHaTo6F304MmVEj9QO2d+3cYUS50ZgVZgv
	 OCAngqFcEFCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4258E92FC0
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169654122866.6465.16607803510661691483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77850308492e935647707ca057a454620613cf19424f4a17304ee6ec29304449
Date: Thu, 05 Oct 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696541228
