Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF8D47A46
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yaec/kdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890D8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703093296;
	bh=RYEh5s/OqdKX1RBwEc4AwnfsAKaZpyp8/ykpnPsHbm4=;
	h=To:Subject:From:Date:From;
	b=Yaec/kdAJdrH91qDd7JtKFiyy3uy9MsRuCiduwTUERXjDDmnIrMuqcAledgheNlRY
	 Myw0b529pvB6DmjmYmj9Hj5/VgfRsdgWfssMb9MMVYxvdrna//HrWbH0I2V7krBNlV
	 MmwB2RJIQUKUu+wzWpKJiKX5+c2aHaH6LK2WrgdkjN3nBwesr+eMg06w30Q/qlRQbS
	 CiJTjiQ1LgOWBkOxgGNQHIp9yuH1lDU3nBmSJZ7Crlbqwtn5FpBmR6QchrRFzLxn+9
	 KtrtKN0qek5jCDcri1b7Wcid6CWDQ4j19ID1YBG9mUpgX18GMaA2TnvqtNGdqqKoj1
	 mLrhBF9h7Ymrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6907EC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170309329642.28111.2029201090981421142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874008e769c88f01f06fcc7cbde788f6ebd2bc97cd83aaf54246f985934c81f0
Date: Wed, 20 Dec 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703093296
