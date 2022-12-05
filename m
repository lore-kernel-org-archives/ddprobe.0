Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91F97C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F34C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670249454;
	bh=6BwvQ5E8QiXl2khOsv21qwOor2NMhK4Vx9qpPksw9MQ=;
	h=To:Subject:From:Date:From;
	b=bQmKexyWypjPBccAsADirVGI0JZv3S2kts3ucc9Wz1xqLWc3o27dEThX6xJgA/fpq
	 KzogalVjYcDcMPzajJaH9ua1eswC+W6/g4NCsbaFehEGxjyoDHaks8ZM34wW3QX7JD
	 CYGsw17s1SsBDAL6Mr8Zh0U6kQ3KCPpWpl7rWJn/EYBUo1x+bTVdsNiqyXTvqpWPnf
	 m2aAi5YIeAtv/GFadC5JiH0n7+aosJlTp6sm8c4VFVCGa2gVHtmbtonwW2OfirW6jh
	 ROjyK7SzL1OrIHjAjR09ewIECABgOpPNRDuQ3We6FpbXgK+iKbcbtUDQwI9awXW0dY
	 aapD9qfZnUMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53064C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024945433.19650.15969263774927333031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b4d4fb31bd6afe5bae4da2817da8e8f72cbf05817ca3b0c5511ba1691cfc44
Date: Mon, 05 Dec 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670249454
