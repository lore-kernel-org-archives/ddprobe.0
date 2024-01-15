Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF78A2C68A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQXb1MbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A6CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705317496;
	bh=Wd6mtpNkNl1x5qIxtzrjS+iaDP9Xbknfl+hWbbW/oIQ=;
	h=To:Subject:From:Date:From;
	b=aQXb1MbA6u/UMo7Jsh8yeibDU6AvwKqVeKP1ZCRBa9zl3n3a7bQ8KgfUxP1vjMKNj
	 aMsgFDAJaG5t8S9FrypyialtY9RNokpDHnWpEwrNiQgRDcQcvdxX/AjMh2i24F7W2/
	 Iz+iCipOrEv9dJc6Bimtz2rmJyEeNedffdWccqoF3S7Jto/FtWYTCVciSudw00wbxY
	 Lvd2ZXUO4sfCJhayA8sZ+u+JHV/KibwDmjFFQ5E67j/YMg5i312NwL79nil0Xjg5GH
	 laiofxElPBSoxssTC1LUXpHJrfPG+RJ4ir8lV98SLalAoc5wSnVpC8pAWon8V6kbbG
	 GVukI+fehGFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA1EC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170531749636.11558.5383412345073447326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28170f3304440886449a7a732c5d933223a39daea064b0c02e61067c8e03e77
Date: Mon, 15 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705317496
