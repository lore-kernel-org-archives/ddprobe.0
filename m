Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6826182
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A23C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667866254;
	bh=E+Zdv2lSHN355j9/6ePODDpnKRFVPxkDotIJ3ZmlhaM=;
	h=To:Subject:From:Date:From;
	b=hTwWsewZHR0qiTUINRKs3XMAU0DutUIcY53MIeMPiDwOde8oy/qu5JT93G9On69cj
	 bndhRS7w9uVwjLCdkorKnVCQluSaXBjAHkVkSD/zT/lkrF3uB535f3WbpxTki5IVKc
	 iG5ayIVSA1N/rFzPPMZSlDFulmrtN/UgaOPRtvrPSw+/QhMMRpIXHPPP1s9f1c4+MA
	 4d7PvvdX7BFJ98NV/kjsCj5LepKmiUyJIkumX2v3bGYR1XnJp/LKf7fcDC+KiPgxpq
	 cGQmUPH3PLE0Isrbm3PIpe3//Qvz6fq6X0G65oJSqYOMvcaWnKe094hgq+48JucECX
	 QNTX7VVQ+DDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50821C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166786625432.3749.4039673492049634518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7901381340bc2e175609492660f883c3e0309522123da030ad9c531141c8306c
Date: Tue, 08 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667866254
