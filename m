Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C121C952
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40FAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679413085;
	bh=mFZdnB3QtJBi+z/pjSJXDquYKaFhFTDX5HcaE5Kp7Og=;
	h=To:Subject:From:Date:From;
	b=tEDXo1XjBfvVgSd+8TwYZ3hjhm3efgE5wJbYMtfLCNxRbOTTLbzaUpchPd69kZxHL
	 pNNE74eZEmmW3ITiDauxt8l0CqxmMHoz1X2QCR3SQ/3UGQadOGjX+Q8wjsrIQJiyha
	 fWFOHTFXqTeDd7sZNFPxwoPtej9WuTDo7Y0eZN9/yy+LtvZrv4osR3TDpIod7Vu8pT
	 FFmLHAubj5E4VBOVEN+Fpt84vdvtXavzd/RZQP5Z4C4KrXDMWRWL44C2DxQU7mR6m1
	 2B7f+hepFyqwlbKXmTHC8cWLmkba5lviMPnhYgNuOs+O/bUnmG+EQ/xzVWPP7qHWRQ
	 0/DnJNmU/Mk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BB3C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 15:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167941308574.22671.3982025465733706918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf947e956ae45f66a2f1dbf63e6bd45aaa8e9975ada13f3e4e66b60b3ab0cae
Date: Tue, 21 Mar 2023 15:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679413085
