Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59517B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAE5C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669977054;
	bh=zV70whtGbRoTxGfaWYI+c8NomaAzscm0MRo6SrrQq/s=;
	h=To:Subject:From:Date:From;
	b=CYfSETbI0WuEqm/HQAhclPHxgiwmC73DAQkOXTGyBrAt0e09t0Fc9Eq0W3HdeUmAL
	 nebg7NFKSbBzFB1fdJsdSBXct8a8ScXOjggs4JMXmPR9wyI9YRvix1QK+HqWrITUZN
	 M6ZSx9FQQ5us2cQQpiotqsvsAgswj7xGDPpuqVP87tTqkI7T98nZz8g83RJff7KInr
	 oSw0FYKjcsqP1SBocohgKe2qu1Qx/twdEq/Qoqd2gLTgo56noPbNe+s1XUl27e6br7
	 dTASTBSNgX4l/zcxFlt/yMUBtAIQ+DJlaWbWxf2DAa2ifROAQpbmVCwoTB2snGUjG3
	 PqEqVfKie/lqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52075C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997705432.1955.15005607799096671984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe3a5ba5dcf87af31baab68eaa60ed613e225f595b5adb985a9b441dc0a8cd0
Date: Fri, 02 Dec 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669977054
