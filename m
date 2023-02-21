Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22426A937
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0181C433A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677021065;
	bh=RlU0C1cHXsw1G9sEu16aXCCQCvoe73a+LdqLJummN9Y=;
	h=To:Subject:From:Date:From;
	b=Q41jf8Lrfun7o4+pba/0CjU9VYZgmXAG+TSTbzVZlJtV3NK0+9/pXZFmRhIDaCIl+
	 7dQU4pxCEJdKWBe/2x2HrkO+ysA68oIP8DFKft83NVu95p2UW4Rv8SE2tw9AYdCS1E
	 TOyIpGLcm4C0YslaBx30XZRfs7NPiWI/C5RYfGgGqu+rIlxvI5AB0L0bV/ZHSa8/Ah
	 H7hf72V5Qs6IR1OKecmIhOFd0SzdJKg2p9cS6Nx3leckPp0NZ62gPa87j9neEAUjmJ
	 mlF2I2JLSsp4vABupVQaUwH5i5anXQZuyRWHwqPRaj/pnLYmN2+vUwkuRjiLEkR0ya
	 8RtOLzQ8oNh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC65C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 23:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167702106575.16230.762689272706092230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9850fb21f1cb91eba43d46f552aca606a2cb0f6a5acd10be4a63c5ea4ba7be8
Date: Tue, 21 Feb 2023 23:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677021065
