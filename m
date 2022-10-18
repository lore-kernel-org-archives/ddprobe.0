Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54521FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714D2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666076453;
	bh=jzU4Is7lVB+cYZZdxOmXhZ31pjO4IoYIVFI4Gber82g=;
	h=To:Subject:From:Date:From;
	b=BlVo8HBc/XXpZ3tguGMTASwGMSjN9Q+etoam0OzXx0HRMthb749smL5lGWT6DQYCR
	 SC2QKUc6IVeRd25zaA085YVn6vO5vOvp7oXPxyj/2/fefSDKiDucckuylnJ0yw3DP4
	 PUfbzhlmyNcrgFMl7/frPs/4PQCS4dyFxQTE8/xyr0MOXzxl3D/tXR/Qar3qMpinpM
	 LvdaO/M9BqE0QRQWoGn4dzSsPhEyWcDI940nOpB9mdpKMY+5gBAgQslJUqCjyWuRuc
	 R+cTN2Nc3R7f3vtdEhsSxPiQ+vHAYWN5VVFltX4SFuvDIvkAwz8FgDPkUJI8Oly/xw
	 XZS19wLkBTD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5378CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607645333.8303.16834967064901178524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa73fd537d98813dc8b9f1604da55577505c70fd59810617fa6cc5d91c2be7c3
Date: Tue, 18 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666076453
