Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48081FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C11BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670038854;
	bh=xVGF1bqAa0RKIG9uAhQAfMv3cDkIgbd5r9GmpOaVXJ0=;
	h=To:Subject:From:Date:From;
	b=ZPyDtHuTp2efvtPVc6fxj5Q2INrPxWNEDqpxv6WWNyMjyJgCCYW5kACUwXhGjW/kL
	 gzPH21fILZRUWPiN7HqQnI06pvO2+l+qA1zAQWMMF7wobSEi7fOEOK1HVPhIKsCOTN
	 6SUUTDC9kfXx1aaGz1ss1cG5hbKBhFprLq1OwfvjTF/yHYCnYBMyfcWDLAClTE0Ydi
	 p8GzcDgpUVVi6dQQdi4j52sUFj2JEAGI9MjA5Q32DykV5uQTEidjWFsOgjW9MFV5hN
	 Mbjo4SZEepj75Y9TVFdCIpXLvHe2EpNoOq3xS/LstLrUVU9H5frsVTPGaLT0dyJm7l
	 kDbUbrjzW6q3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CF9C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003885432.20335.15908556367600715509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b88fd427c5974c23740c0217e9839208834ef7430a1b7cf5997b8bb0c05aae4
Date: Sat, 03 Dec 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670038854
