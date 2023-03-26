Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400553C27
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3542C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679845925;
	bh=04EbkCmpeDLOLDGN2YxZHp6oIAXOnOEvhrIG/Vf2R2k=;
	h=To:Subject:From:Date:From;
	b=VDAAN+Ux+W3eX+IPDEo1evTx3FE+cBz+KCRVO3rYGN24inq9WYJ2ymG6POhe38PR/
	 CfIrRF0Q+F6PAicN0PqOCnbJk3IUK7HdQPZekA7fBuO9iOcKD7PgQgB4z4+vJm8qS5
	 2CDloRjK35luomm5lZ/V3elDXC86ihK5QnDRpggDWb1TEAcy/xDpz0Xv2dFhfWC3RW
	 ZmVTrPTU1zhKGH9Oq7Z/w/5MABlhzwmwFTLu0iUD0dS32CAnCUFCJWDz4+ApafU1d2
	 DW0fzWcjLYPV4ji9+MIC56O3a6CcYqA1dPa1s2dn5ZC2J+tou7UxP4wdCRYvsh+v+U
	 K9wc6zQvvkJ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C51C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167984592573.3163.3714647773423105086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a11be2846ac0a0e24e03e6ab56091a3a60a40fb552e3835b1886ded0c339756
Date: Sun, 26 Mar 2023 15:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679845925
