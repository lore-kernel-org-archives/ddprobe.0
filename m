Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA3388891
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791644434; cv=none; b=WIXlV788A7TguJ8e+VlCqqAG2z6/O2NsWx51j6cOFX6aIbjfH0uaUf1w4w73sbFjg8PruJZQ9cPN2EENen4cg+FyshyD64pYOiX663Zkl9v1o9w6fBWQZbpuANi7tgVNpM1IgYOXH8k+R/YPaROIu0IGZ/7tid1kG7nlfYOh7xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791644434; c=relaxed/simple;
	bh=hGafkzk2s9vgaLWicrlyVDYKjNPyzYLQojvpYSO3j5E=;
	h=To:Subject:From:Message-Id:Date; b=jjDQlFZGuFGt+kLNWPedI/NAgn6QokZ25rmVFbj6CbBe2I77pANk0qE8N7VC4H8oL560AZqDL/DghC8gDsynL4MYTSL3LGC4tPF+XDbgmEAqTI0Wvi1chTh0DldLsUbugQKOB7QTpjs7ry9fh2kNPyTBJMvlD7jxNfgKcT6OoFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6cC4bJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6cC4bJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC778C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791644433;
	bh=hGafkzk2s9vgaLWicrlyVDYKjNPyzYLQojvpYSO3j5E=;
	h=To:Subject:From:Date:From;
	b=Y6cC4bJROjsF8MxKoAXloQMY8hyk2AMuu9nu2wcPcU18RMV7oBHGqxgs6g49b1Wp3
	 my+1bgwHpSlZOltzd3uOZo/IwJvkiSeef/TR1bgaCkBAUWUaX3enX2LFVuykTf2EGy
	 UW+4yTqrKkqS2L2D/Qz82ymQjteJ3JiAoIkHnmTTIfoU/M1ZjIt3mQ8tz7iYSyFDec
	 XkM57l+XEVtqY5WSjIS3gSgKxCTfc6GxH7t3XWCsYm1URZ2QQmDNGAOc/vdbjyRxQ9
	 8cjo6GzNltMZYIKAkj149cSqdakhPRrf3hoamOuoigqC6ho5Rb0EsWcd5n8HdoYqu1
	 2bVnF4Xk2S9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DBFCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164443368.29165.4406935791476944574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6850ccac323ae788c9e30d4856310d231c866e360d95e1446c251026fbc12d5f
Date: Sat, 10 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791644433
