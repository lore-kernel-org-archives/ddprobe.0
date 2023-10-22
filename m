Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B04101FC
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpjxmUfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90F83C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698011896;
	bh=FTPuf2V4U05r+2IGDo931ZWeUkmD+QPCo3V48/mi2xw=;
	h=To:Subject:From:Date:From;
	b=tpjxmUfhs/AEnus/HD7maek16IfYIqRPgD8AoRLX//+kcuvM/mzJV1TMp0YOXxdfB
	 WCr4sryqeGvDz3BLM5JUmQiSg09wZetUcDDCoyxCMYzQkstfviEsW1aM3CgNbZyNtL
	 Oy3+MaQkMQT3wzUo0oqMhaTM+azUYIkJL6xPJZwx0PxpwhHs9qSBzrJsjVxjTkCM56
	 kMAsxonyzngKnG0wA+LnlcPZD6ssNzMRZz/+K06EPJIllWgxvcufxdt9U7Q9a5dbQD
	 bw7URpx7h2GxWhtmuCrhlp3aByXpEnCrn4cZ0u97Tf/Lr5nFmEm+ACtegZWqjs9bX7
	 T+eHG5os551jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783DCCDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169801189648.22549.9217223134440341312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2312da748ce9f8e8d60d3b8c047cd7c0ed3cb37b06d87d31a0d5c9dbb18b9fda
Date: Sun, 22 Oct 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698011896
