Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0950F5243
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6ncqc3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 867AAC433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705258696;
	bh=XiJD2cbmtSOMOku4nfZHIduJqUScpc9xYJzF7pb9Ddo=;
	h=To:Subject:From:Date:From;
	b=F6ncqc3wMah7TkOk7RG1IX+PwihtLSK1trST6qwlT/t+weyKaJu0bRGS8aa1qQoRs
	 bvvvVT7c2ZHRrfrhSmuYclDXAy2h9PcEZ1mLG4lh47roGYX6yrREKtr5r0+9qjO6/H
	 QkFRGKtNKklS3cd2NrlpDhysqb2yOGWC+jVpXBx0cuzYkcSHHzjArahttUhl67Qnyr
	 t4UEPAc8CoqxSrGYZuUU9G8ox9uhQ170cKW8kDl52FxtJB3CHK0Fys4vkWMjlFY6I5
	 0sFBETgWvJ1cXGUys1lL4u6TFJu51k1odfK76qcWqIP/4vL4KX3BPackyBDvvmdvTw
	 CS1pGe3My+Seg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64398C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170525869637.8153.5467648256837286804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fd117f1b860e069974f235e63751d9d13b1a2088e17022d4a405b6346d2d7f
Date: Sun, 14 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705258696
