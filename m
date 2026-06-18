Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B94299923
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781752594; cv=none; b=WdafQKStcvu+gGqU6fjFHOvRNXT0OgVFWLv3ckdF/9NlN3kD37g1iHpsnCuPjyUFTpoU9WrQD0Q7dX2Ep0fe5VEE8UIcZ7jNbWbr/tmcU+Lh3u8sTuI1CFVShceEqQaNBc/0A7bgIM3Tx91IhiloqFNrGWG5TbAhKbG0rZB6lwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781752594; c=relaxed/simple;
	bh=fMTnI8FDCjcC8vgUUUP1+fBIo7xDRtaCfg/P36X/yAQ=;
	h=To:Subject:From:Message-Id:Date; b=sI/r+7d3MHXCCPE4zJvB4zIoIPEmGfSzXmhmYISVkVMpwOql0US/OdhaRfcb2QuZ9L9W1rWC6H6oVjPbCi6g9oUjuL0lXDRxR1ZS9oO3hMILlSIBvHolEYdN9L/pbZBOjM/b3hACGD6koBEOVo1edU/1HeF57vJ2g6lYTB6DcoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzmvkgSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzmvkgSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5998C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781752593;
	bh=fMTnI8FDCjcC8vgUUUP1+fBIo7xDRtaCfg/P36X/yAQ=;
	h=To:Subject:From:Date:From;
	b=fzmvkgSDUZh7NDkruozPP8O2It6cgc5//OGLt++y5xDQW6sjnQtEOG9f1DvEXCBuU
	 al+TFucFI7wu7N7QLMPy8Dasr+RvYA62z1yJR+hBIg5OnvwzUkUOmB0KE1f+j9NS3C
	 Y5/RyNpUUAXZyf7joVgWsWma/xqnHQ0+yz2FZvl1n24faZUZPVYK04XtfcuHXir0MW
	 fMHcNROP+N2jBY8xeOv+yIdlLLzaKNmPIV34dFekXsetJSrt57CMzPG3MUPZRuDe6L
	 rv171Wb3rjcVEhcpWLJC19Z8Ezoo5wSlvOmVBAbhtaI0rP0wfU+D2lhliiMrMitbrH
	 WcMt8nhp2DOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A06CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175259372.742.4504717367170364277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c7fdb5fd4a0f317afc98f305ce5f87237533dfcc132b5c0b549a96475ffd1e
Date: Thu, 18 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781752593
