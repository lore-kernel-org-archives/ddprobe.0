Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397BB15A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE02EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681866845;
	bh=useCjm4mYj4+LrT/OJT5f01UaDuO3XmsY/OlhCB0oMg=;
	h=To:Subject:From:Date:From;
	b=npCNvBMSNUpQKGD3Axo2kCmXfS0LUweEFjQnhoh5kYePE2n4cYJGGuNixIcqSsAGw
	 IV0gxSbwNkyRzrPnV4/vtk+Z7HSGMjTKlibgRp9V5qIXUGEigeeX/Eb1p92RouMPxr
	 v1EficJ5/E+df2W7vB+YAP01KYcHEHxTy527e0Ik3w3OvtmNpvax6qfGJ7QMaRdqK/
	 ARQYpj83KW/CXrTR4Y84Je+MwlbZ6Q1KOoOEHbKx5M0arhJdoKDVDYN9XDZ7KmYTKD
	 vfjj6H/N/G4M/M6x65WkhwyI5vvz7GfSG1MPmQVpL6SxVNpnMndijYFtKIqkyFxmAx
	 wjcZMwhpWpMqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C230FC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 01:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168186684577.1482.2737250111901021081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a935e6bf186c8bcfbb9a25c9b8d0f6706bdbfc0a39adbdff67727be9ab6992d
Date: Wed, 19 Apr 2023 01:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681866845
