Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055E81C860C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774916694; cv=none; b=h0WlR+kVLn48Z+GnXlToG0fPGUEqOL3Bp5iyITEawKUMJ/Gy05gxgozpvAQ7XYVpcXjPW6K1/Oh/uvtrtHRTgGiwE58l9OH1rSfaRKTAHHfut/j5MK2gfyU//jE1oJ9tvDFrhtRdqNvRYdGGiPY6RbTl57SCU/6QmqeHZilfNXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774916694; c=relaxed/simple;
	bh=Wu/DYoB+qjd7oNodsXmBRbp28r7sqsK8FLy4EXIUfgU=;
	h=To:Subject:From:Message-Id:Date; b=Mb0HxEjthWgdvI+u/6q+gtWeh/YXHmgbay2nh8EKXaPnQoHNNUaTyv9as809/BgCw8Ryo6qBlNVfO9V6V6HeCcsgY2UjQF5iqTC58wf7i+AhvJ1Y56ew9Eh4mZiJilocBXmzkj8jqbme64+DsgT85o8OMg9vN8t3pk5ZjLSP3qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQJhpKl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQJhpKl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2774C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774916693;
	bh=Wu/DYoB+qjd7oNodsXmBRbp28r7sqsK8FLy4EXIUfgU=;
	h=To:Subject:From:Date:From;
	b=OQJhpKl1dILgR+O3eF1OdNb9UfiW4myO+VAg0wbrgKV/4ZHwb8HRq2KwLVPJC4ciJ
	 V6bPTn4JoTAqYOJi7HUoO412IzrE7+aRRQhIK0MsfA8+Fd7FksLtsiYD07XghM6Nma
	 NAQDTcH1OjPuxJcHUlYh6K0qw6kdm8fWDLbVWVyt7p6v6HjtaKooVyM368l0t6T46y
	 BOVsksx/ROo/7tWVKzZ23bAEvlljsoqQGB8QXtJT+Gh1hClEymD87iF1QDlvxf3g7e
	 sBqpJAG3sxGovWSnQC1drxZC/pCs1Z/Ov0uqudIBSVO7m9IhgEQ/k2bvD5c5t3O/z/
	 xWfmYjFo2Uujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C651061B28
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491669358.17480.5408210412915893653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c6dd8633f535bd10d43b860842edcb7c194b2a273ea5dfff80a0442248833e
Date: Tue, 31 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774916693
