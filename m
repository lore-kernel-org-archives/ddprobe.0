Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD8420F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38FCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694940908;
	bh=vRx2NviFIFf1deCn/0Xn4suQkiExp9JJYOZ3e9OjoVU=;
	h=To:Subject:From:Date:From;
	b=dgTfaknhS80DCpnK2VJHICTXHwrSLeCeeZX9k1gwVgxl9aWI941d56yNfy1tUX8rS
	 gspklowpzCJ2HfXQ2to4KHh4VErJ7GU+cXbEQMSPaUg0oT4QKrCKVgypznIOMc5LGV
	 Rv8PtMbYgpV27pT8qDvPdeDcB66QGkRYXJ+A9P8HZNbKb3RCrB1lX4bBB5A1dX8dvU
	 CrpD1oVRE/f1KLQ0CGQV1Bp/s+73sn3V+7ljvQnwYaQRBhIOx58oqz3D/rn1XWVPfU
	 BMaxoElJWXTS5sa4IikoSLn6CJfVn65qzLyeM0CMRy75LE7QpYr7nz9qy2YfJYGjj5
	 X4vmOBIXaZ29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9294CD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169494090866.14403.1103243724863130830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad0949856272dc921ab5d1c22bbafafebff30e2c63371b9c9d794cacaaef6b2
Date: Sun, 17 Sep 2023 08:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694940908
