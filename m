Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE1510FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31A4C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673059887;
	bh=V6aP88T4BNX2aES/Yqkf2P5x40SmzF05AfLDTcIzMkY=;
	h=To:Subject:From:Date:From;
	b=OtoOe/hJtfZjvFsL+Qmp3A3QwhIjBe0q2fGXEW14Diiu6OhvKtwqiqQ8Pboog2OsT
	 QkVOa3qBs/wlPv8ldMo6Hb9mvIZVxIQohavjhWOdWHcoGvHNZKVIieItzFwATiDHu5
	 FKz/nkW2JpDTq6x6wGvg91g/skSV5VvG0VGUJ38K23iQYBOKJTqbyx4/ogyI8pMGgT
	 Kjp+yy/W32eOuhxzF3SxscsL9uAaq2q4TTS6x58PASDXGjEsxCAdXadej4vXwgHsD1
	 b4S8xqdLmpZuUAskY+3+VJ7pI9UuMEiFWogNWBZNREchGn3VXck5U2O/bHxQFkL1LI
	 914KKGv/kZPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9498DC5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305988754.22248.13097317791495209166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45bb477ff38403e64c111290c91f54f7fc752808d3f9770e8303b6b90be4692
Date: Sat, 07 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673059887
