Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C02C19915
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC0AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686072126;
	bh=EyuYVaaY1g86/FPdl4EXNly9yNrs3CJ7TVYEKaW+Ohk=;
	h=To:Subject:From:Date:From;
	b=bi0W3UEgtv9phmlw0pj0TPn55C5iokecramGSQEvJNyhVCIiFvPFwQYI/+oUrTRuX
	 zZMXCjxGpnzXNtTr2jDnqSDwz6WfnqSZLgmuXzBXQBlD4eDAerpyHS5ihmmKXw3eX6
	 fi7PVHYflMv080d1VsFrK5mtysG16ATGagSSkkt0DzqRqDfpc4P35gkIHGVLQI6pNJ
	 BhHt2UGaD2WOg+E6hDO4CH9zBs8bDe6hQDvAOeWNgmRUicGLiaseIs5D1fQLgbeeAR
	 J+wXiAtG/ihoyztBNnAnO6F+/14G6c0rfHSxyCnyEhGRHYEvh8Za7mMfhLudllWmG/
	 wqUL1ef7gvp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1D2C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607212581.14374.18198758767045570696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1090a899171e3f2734953b421e945055b63fcbff1b38de490dd513d40869c308
Date: Tue, 06 Jun 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686072125
