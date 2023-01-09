Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E649315B7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92C93C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673233887;
	bh=ZfPaLURi7zqfZQ4noFizrjdDkB0S9Lq/UZERM2myFME=;
	h=To:Subject:From:Date:From;
	b=XuExHoWOZDMiIlCbhHviz1EtROAJ8N7fi8SaZLNA624GT+66/tLeRH+pKAVC84htE
	 FZAw9htVYXff/l1HkTjpxrqiQpJRMSz/z14vWoOP0+PzCNdNbp+w5lrot1KRnljiaa
	 uB8Np/YoRM/stmXaWJ61DrcLpOcwczliKzijacePDTvO/seIh9nK0EmJlCcVFG6cc9
	 Xn4Cs9lYgWlaVOviEcT5l2HaZH9Fkw2/NmgX0L9zb1D3RuItGCMXdPcf8H8DMeZLad
	 H5OPTC+IK/S5PfmgRZeiyxojzoSFup/HGJ9KN1cTR7j3Be/ULANNATJ5NtFwP8JAvf
	 tUr8ivOrQ/fsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74EACC54EBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167323388747.19596.15667751696977397232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc08fabad5d0de533fe94cad0bed5a00a744f50bd26b618ac7a9b27165e0a8a
Date: Mon, 09 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673233887
