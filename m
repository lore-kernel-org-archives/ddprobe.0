Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C746A1864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742CCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668403854;
	bh=hW2848gJvSj5nGSNgutcbNBEpV0KnW7iGt9CFbnYb+U=;
	h=To:Subject:From:Date:From;
	b=gGPFwlitXlIlqH+kYEvnoLiB9P7Nge5GZ5PAFC2RFRkfs44LLziW/joXuDw6MvakT
	 6+Z6tUKEejPR4Ot/rCie+SrVbMpg69kW22gIlYnL1vc3D+Uw4+04qEoPIoBWItJ67+
	 YuMyJJ6loyaBVdf/zlJuzMdks6cypgv5wHOUqL6gspjPTc0eJAgR04vk6XKbQ7zrKi
	 Fg6WXJUGq4spoXQfhBZcXB+Ib0eH9JoIZdlkECauFknt/gcqJoqtUL/mXMHR6JWJB1
	 Pr37gId/CjEpCoVN7BWwbGLKR9tn5+xAQ/G0ldeDMTMShTFPi8os4N3KdKQNH/CN4m
	 3LUy+MG+TDzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525F8C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840385433.1729.609714282034696849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30fc1fbab76bc84e5695a64cf54b33ded0685cb7464c87f3e04143b25949d6b1
Date: Mon, 14 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668403854
