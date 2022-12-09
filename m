Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D8564C
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EA5C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670561487;
	bh=KFd4ZoIlvAuHtc3+nQ1g5lhEEQWnDPaniA/6M3F/VkA=;
	h=To:Subject:From:Date:From;
	b=j5HkBOP44RDFfBlb5sabEvnywUh11jCVeHDrqiIidnTnlniyLNI3gtiFBRMMLfUFm
	 oaks7ACZyrZlg9jRQPNfpIruw89/vBGXSGbzDifYcRogSh3wFNKZjEF64mFHhb7ArS
	 E759Vt1iVT7VJJ7kePehTbgCa2Uh2305mcRxvzQZcwsY+o48LAb1gW9pXzLGM2zavY
	 hsSR/9yryVteyW+8rd7Wp8OdDbdkCraEYP4Un9xcxqSXeFI2ENj6jDnMTFOn8hxVu3
	 K6jojXt0VUtjq9zB+5jcaWS0b9mdOtzhvxvrg/KU7XlHtf4GKEoUrJS9u8nNdouw7f
	 m1N4dg/Es9wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F63C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056148742.23374.6313914159844569272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd056abac91ef847c760bfb3bb2573646d5ed01b17cb10d5195197893a2928c
Date: Fri, 09 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670561487
