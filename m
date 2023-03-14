Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AC17C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E96C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678766825;
	bh=yUsvdAXFqCxkB5fyduA7D4Y5A5mRAt6VtNIOsHEsIZs=;
	h=To:Subject:From:Date:From;
	b=OGyZr16OZvI5eVobXsli84NxPAViCphfbRutX44lpSFmATuDU6lQuGl++WfK/LzVL
	 9h1Fgo8n+a9E0TOebz2gADV3mNTqch/A7CXE/BKR8u00LoA91yXgoMYtTkzGzd63AG
	 A4joe/nGsn/SlOcXy9ABe/1FpaOspkywd2KRw/PwMe8h/3GcDr+g2INhE+iLa4g6gE
	 6VvUK6fw/MIv4254hseI3kBfxLLnvaCSBd+EOORTR/eoDVOpX8iuVi4A0IbIoIsE89
	 Zxp9dVhDnVhDxHkKQsHpms4CdVth+Yy+1y8iIDquWLRYhi0tecEkb//GdVKOVyAdN4
	 z+rxMgxlfIZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DA9C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 04:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876682578.26575.12468622826768026656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868494178b61285a426ed3330e8d29901e99fd15ba1583cbf11441b30b05815f
Date: Tue, 14 Mar 2023 04:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678766825
