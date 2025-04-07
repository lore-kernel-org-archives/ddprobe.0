Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38267225A3B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744023594; cv=none; b=ZKwLmd5Ecseeka3u8eiAZcDB2AplHRBHEdop8/9nX5YYAvMrzmRhDaTs9wTr3gWq0pdD14/2B37Pyg91WA034+Gm4cE7IAqv8SqZLg5hkZ8ylKzNzaiUrb92WWFvO9oxarwiUQMv6NiJvR41VLD0+uLaBEa9c8zDsWK7lHqKA1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744023594; c=relaxed/simple;
	bh=SMn/xlCsA5KnHq/QR/eIP2Xu4sGaV4FpNxKFCU8gn/8=;
	h=To:Subject:From:Message-Id:Date; b=cqEbAtIFzpDJnVPeoyI+glk27no3DfOJTI1LPSoUjl3AkCaxZz93inpDYny+XmuidemvW6wYvA/bfQl+YcvnS4Jr83CG70n0iJx9ICKgVvOnFZcCfRMwAMFYPwUAE/IfP3QTXUeycLG+xYJkifKcFYpdE+BPqfchs1zLTKuv/pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/7cPwsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/7cPwsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A372BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744023593;
	bh=SMn/xlCsA5KnHq/QR/eIP2Xu4sGaV4FpNxKFCU8gn/8=;
	h=To:Subject:From:Date:From;
	b=P/7cPwsxLnNKXPgJESX7KzxIgidtMMNAPiP7IxTmIoNjmXRafv+MFLSptGvmgqirL
	 lCAi7Q3XKL2NJT61iFJ1gBFBbCmEoHpgM0sJpSPQua3LeclmFiPi+wO50hUXEhHdU6
	 wPXinXYpmlTh0dn66IRh5rdr71d7m+IftmJiDy9yHTLBEXph6FAZf3sysI8VZO8oQM
	 B6sfETt6Qim4EEfPtVTDheTBk0XFNMYhaf81iYbX7KZzDx/osGre0z/cJHLpmRWb+w
	 6w9ZT47cJtgoZjyUtpLzdb9i0rv/LfNPr7vulxNyLY/vl0CUL9wEGo94VVOaCi2BCy
	 lWm/uq3TgLZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9426CC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402359359.26400.14374170850211980226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a84c192d4c97fdbab5b68237e0734bc8201c7e041b5f38312065653fca083
Date: Mon, 07 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744023593
