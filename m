Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DAE653
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AD3C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686886148;
	bh=CM3GvnQ2Js25dyXPZZ2pQXwCkjM0hKbXnvkklW3mv3w=;
	h=To:Subject:From:Date:From;
	b=UVDiKytc4+nsgAYVec34x3gRhNbcua+zYGFqqQZF0lFAGhg0Rf1BEmN45ws+tB09Z
	 lEhLCfkUUGWHhFSAJvqFcUh571PM4pAhhNsB1HBTIljUej76p3xb1+V/CMo/PEdP+u
	 X7XdlDmMhKqO1DskC30jumkTR10wYx9bkPt7GdqqBMlSv2LFRiUfk2njHoAkS7yVq8
	 PsQC/L7WWroY6/VfUkah3IzQ2FzNQ4LW7R4cDd09Qz9Wt2o+1qqzpHnd+kCVKEo6IJ
	 aewGcVpV2En6IFb0W54Tc5epkaRVuwl+jhSe+f+wDhP4/WXCpY+lDs1f6rYUBPw9Q0
	 ZYFERBdjLDTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C0FEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688614871.14949.13729819943468814723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedd651b4fe1d4d2c737294c15dacf55c398af67c89d64cebcd24c6f37eadbfa
Date: Fri, 16 Jun 2023 03:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686886148
