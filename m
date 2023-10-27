Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB8A19443
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP46DJJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E787C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698407896;
	bh=4qp/a30Y8vtqV/GAg0SjmQ8itpZmPwqdRqUCD2pCLQE=;
	h=To:Subject:From:Date:From;
	b=UP46DJJUAcX97sAyiCSqXCYdBP1B2L59cHjK6Vh5/i5ZrE6QRl8Bh4vFOy52WM4IO
	 M327Etmpc8mTxEQWY4pXuR0zr9vLX/bbDu+rv2AqlPNAAKODzB3T9QWSIRoftvgfgB
	 dwdddNl4hf9HZtqQ10FHUn4ycB/IJc3SIfre+SCgxCT0xa1UKsoS4/MU+AbUo8M64j
	 wyNY8dbE+aNJx6PbLLO2RtYFbCmGds3wjwn6R9wz6eZipFu3uMrq3r6i2YdmL43pzm
	 t7QOf59VqkXTD/tNTm7rqvSf6AD8zhIJMKm80Ffz/N2FkfSF14BBNKuy/k2Zhb2VL6
	 +R2U48ztvUM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 736C1C25B67
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169840789644.14758.8767735428117541628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1fccb9cc7c2c66a323d805bce6d3496034925349dd5e3389011a540eaa1aeb
Date: Fri, 27 Oct 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698407896
