Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B27E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA113C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674352925;
	bh=TwbnQ/tNbRnA0cr7pqbol+GTf2ab7rjgIkpaBXl1SxU=;
	h=To:Subject:From:Date:From;
	b=cYYlznoOAqRBMur1Po4AILXDUzy8txVhG+KMnyo/6Zq6NFEVohLxFjAfSM9Qp9hhv
	 MLdGINcqxJ0YbxC2NnOdsx+X6Omi/ASGLgZRP3TEBkRlhitoDOwOCepDQFGT7IPn7r
	 xIyGW7DZptjKcA8Fk5eB5i3DzJPmuZFAXG98+0/EFdLYAq7/ogi3DSZsFMivRvsyLy
	 M+mXZToD1WE4iNO73TjIUMmAIRt//C5x3beapC8LMzlLWeHXCoRN9FZhDGkGglKNgx
	 LDAZUAzFD6YfHMJVSBKPuLbOZtYtNAp5HSusnjUQ1v7X2vqf69iKjpHLRunuvirxog
	 iE2QXudKGEEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5FAC27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 02:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167435292573.22621.2246044582030923903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64200f34f46c6748e0e0720299d4e68368057c291a414e9544ce603351dae59
Date: Sun, 22 Jan 2023 02:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674352925
