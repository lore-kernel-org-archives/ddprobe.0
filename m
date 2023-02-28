Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69449D506
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14CF8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677626766;
	bh=INwD1jW7rxMfXSWul7mEnuuV0GFSQ1eO/jun5+JE3NA=;
	h=To:Subject:From:Date:From;
	b=ZI6K6nmAfXhavtUsbSsgJXNJbvMVWi4LcLrolTaolWb5TJyU7Io6Y0I3gdpeRAbGk
	 lYGGmKg5NQTV5NDuJNHzCvA67TKrT6edyfFoEbay+PjD7FDrsIsT8OoP6uUMoeOFip
	 xw4LaZMak1P4UQC2VRkkd6fuQowpWiLAszCANzIU36CwZznw0vo8Ikqb3h0Cvn0AEI
	 wROZHEHTG1AJk74tHK/rtGBVNTnk0YS8XFxojjtvtx8nW6oSOY/sKGB/7YiRoMmxoz
	 P7DGlrUdpl7mp535R1tJDgrPoJd2RuR8BJTB6kPN5JJuLGMn2RBjuU8QoBWmGDxf8P
	 unYbj753cXJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7C5CC64EC4
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762676593.3134.2929552838289159131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a0b97c4d80cc5b3b334e9527db9367846c7819766066a25c4ba09ac700d50f
Date: Tue, 28 Feb 2023 23:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677626765
