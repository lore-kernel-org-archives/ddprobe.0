Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE361FC5
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="II50UeyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD9BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700704096;
	bh=mRJJ7xmsFQP6hVfXlA1HoRDpU4UJ+SF+HX9zw1fsN5w=;
	h=To:Subject:From:Date:From;
	b=II50UeyIEEu2KDOvPPF6Vwp6vdWvs6i3eaDokqw/Cnc9PIzLJ0H2WihQgmTAi3uLb
	 d/6HHnsWKSQlsyTpyRFvrGl+JSrNWYqcO85KeAqvqYJ0HQ9XaqnK4OTahizanp+VVg
	 W7F+37JCnZnH5spuLwPIBFvlo2f8Yyy52DuPaUD1kAiwmibeEPUFhzVJKtNdTNJVBW
	 jH3NN+7CcdO/G4OfDhIRzViGTHoCfF7IawMcdVeODrGtjO8MOYI/TxpkFy6dxx0fpD
	 ot3wJ9fqaHRvwILpbb6klVXHfVE3+8xMjgSKJ0U+bi7aGTJbsesjT4E1EKgmMxplxy
	 G2b09G2IrirVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6061EC61D99
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170070409638.27913.3633104653748378692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae66910f9739cebc9ae77ea02e36180b02da381c13520850a5f12f640224bf1e
Date: Thu, 23 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700704096
