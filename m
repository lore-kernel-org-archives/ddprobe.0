Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8526A21
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8017CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672127487;
	bh=tNEDBi8cchjOuRXlScgvihvsqyJqBffd70EG+b9uNWc=;
	h=To:Subject:From:Date:From;
	b=QdrXL+XvalFmNIt7pF+n9LVQfRBw7ejx0FFC2T8kehZDmsx09OCU640fDzeIYzazI
	 HK/oI2kmuKqGIs2AFxjheiK//9HTsa9VGYI9f8UEC4gTSXaFWRz4XQY4HSU5xh1zVA
	 EPfdPTJkTHiuUPtST1Bh7IM/zgbmahPk9VUMjj8gtuiPAejIW8E3QrjETKb3ubYoTq
	 dEcnxhPNA/vvuGoJoVfMxBkljnHbJFEqhl9yxLVupoBCsa/d5pXQQtH/znlSadSMQ7
	 iT98H3r/Pv8X8QgbDG8Lweu48Ana1ZV+kq/uikgvJf2Qn0sX8yfPjKOo2nmb/jKdDg
	 QIqSnEjmcI63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FD1C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167212748739.3533.15702022455343323761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7196f2410ec91c83fa7fbf63a7b319f695d07450e60f33167a27746e7aaab961
Date: Tue, 27 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672127487
