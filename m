Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B71364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF67C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669602654;
	bh=KNEJUC0sTc6/GMnw+tOLTovVIbcrL2IKzshRjU2NJYE=;
	h=To:Subject:From:Date:From;
	b=Ge45iwQnsU+MvrOYSMLId98Q2wMWtE78IsD9J/S+YjCtFUBDL8kJu7mEx4kd/4Gw5
	 ceAPz5eW/cR2IKA3te1H02xcVsWnNhMJkkXQYZsh/wxFocuyALe8adv0DT64eZzv7O
	 W3IKXTcX3WgSpKu8lOYhmoda/Z4ZWO+rtzsd17yDmyffI7hJJKmVuQWC892Y3Xdj+a
	 WuJahz2sx2pcpCZuZROdwkqDiMtAlzpsEaPdk/L/8/K1PqFX0VmTLUCIZF+cHfC2Dq
	 QssHti0oz21BXgqbyboTJGrZXYW3kmXKLUuZh5eVoUZJEbYDsRyC1jgHi4QEYshMWM
	 LinS6UHEYOaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AFDC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960265437.9070.7386914381890676797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495e65f518a8346327c6d631f799854e77c0969ae19e82aa00713b78574f6fd5
Date: Mon, 28 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669602654
