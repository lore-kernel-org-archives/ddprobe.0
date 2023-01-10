Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7423C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97B6FC433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673333487;
	bh=79pZ+ryhXqup1py9eB/aQbefRVtGeA9h+ho5G52LE0U=;
	h=To:Subject:From:Date:From;
	b=QE/nFB9EvEvmn6zmvI5jvJ/ZkrmbdkXa3XqLcYz5S28yzZIBDPXERsh92rSv4RTC2
	 vAcipB6uOp9lYeIV0N5FnsRT1i9KYKWjS19FM2Swbi9TxCDCBUcpxEaGacEq0onvNK
	 Z9z1zFec6GVsmNZ8R8subYXIQMCbaAqZeZaOB11vz8g9b/4lS0bTWGXW/H/FKT16UV
	 8UmUFyNq96EnSWHN2ZidjFdpKZWLAdxi5zejIo3PH2Mvw39kGEIrgO6SVo4e6oK2xm
	 /t7qn+Rf3d8ECZGTdM5RE0IlQ8FEZp3ITU9ANV6UXr3OFgDGsOdj75xlIn/pfjx4Mq
	 Mv766xyBQYDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B64C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333348744.2479.6793737462145266030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c3b7e4303cc7c4faf2c25a10d165bcfdb90e349a5e8a9d8a2f79305c604be0
Date: Tue, 10 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673333487
