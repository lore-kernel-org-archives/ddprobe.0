Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048023A562
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779562354; cv=none; b=HJM2aHcUx5gOf5ISG9TX+TPp9aYHIclpbypo6QCiC4l+MNaP/033lgA55fLFyop3Yk4Xw0ejUUUiAz2FgkQ+YsWwhTWJXRwMBHIw8HGHMTk4d0k7Fe5aw2vbWoUHiuJd+MMbvjo+rpiyNhzVWfY1DQyQXBQjUMQQSQekVZGA+Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779562354; c=relaxed/simple;
	bh=kSLoh+DMgrfPEh6jGn8VlYp7cDpmwdK/DxK3xRI0nEs=;
	h=To:Subject:From:Message-Id:Date; b=jRqk7IuXzXHPfwtLIFr2QtXGl29pKR3n7zp2IPCzCw35vC43iyRmOsSCadE5QIV9VleysgNUGH8lSqhqBa7yHsOBd7h08+XQosRCJjJXZgMxEr/DafDeprZXeS6iIyhaiqnJvKWDSfhPCxc7DOri1wiP3qp/98udXn8R/dUCgkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIIrBG7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIIrBG7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62FEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779562353;
	bh=kSLoh+DMgrfPEh6jGn8VlYp7cDpmwdK/DxK3xRI0nEs=;
	h=To:Subject:From:Date:From;
	b=pIIrBG7Sbqz1jvBBAmu4Ae0KA+v3Uos2v0wLZ8xuA9UsCV92tE/IpWMtlU5o3DfRY
	 kl2tWpwN2MFfLhTtK2HZpvbdpRapFWILvpCmNofVfoG9aJEzbzwjG7yHpaKKgEthrZ
	 Q7m2gHGlNS/oc8mNAApyBsqndrO7Yaa595Dk8WDYqgD+EjWMmMZ2hlm33Q+HyvY4yN
	 EJhvRzzO3GEr0GJVGT+jXwgiUpYyBS51P/hrCRKd2yeEwwO92URCdeFeRJkCQT7DG4
	 NfH3Qi8qk29mLCnDlFRJ4IVVo9edKO8O6DwVi+7SAFmljsgk+2CTLEPsGUEFIE9JV+
	 jWlyyBD+tw2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D0CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956235368.27697.9945844347994399104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c774588886f0380c2dadf509b0dc1f9847d37eadd1b42c3d85fd08dee5125361
Date: Sat, 23 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779562353
