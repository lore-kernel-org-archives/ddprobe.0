Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA413D0DC
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoEj9ZhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B12C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701203296;
	bh=mf7unSki4WuhyEwB97rbG3WSuZj9Cc77NxiTEO0zYKg=;
	h=To:Subject:From:Date:From;
	b=qoEj9ZhZcF+R0tnDhbK3wOanJzCA139Bp0Yn6ePKWTdzF0CdDL0GQwkoZOBLtvTYv
	 sVcwkwI2DlcgXrrZA/LXQsFc+h/ecbuVPDuLrwNyq93KY5ZOJ197tODBhge3o8KjGr
	 73UlzJuFf/3317HRZgClgzMoY79UmYurc+Tjy5yr7RZyBMzIZIyyTxRhdP/ms81nro
	 e/tJsZzP4fHkH0tGRXrxBYmfGz+92EQD7XDA/GzxTomaI5AUQrvBIpXjJ9iFCc9nx3
	 U+DWGxkDK+TJX4dSGMkMkE4mtzyZY/2YID4edpTX+qG4rDrt8yOyYQMSC3jerQ223w
	 1NCKYfJou8unw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603FCC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170120329638.20965.16728715751098611731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf78ecea5d2aecb04b481e156a4308ee3095b6694c33f7059fe825760a15459e
Date: Tue, 28 Nov 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701203296
