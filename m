Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0909E15A2
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYnTfPlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B896C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701521896;
	bh=yetl9r679l1ktaiY7H6vKXUCMbXYFyeZPqqR0H5nKoI=;
	h=To:Subject:From:Date:From;
	b=KYnTfPlggc3DzylHPN9uq4aYCMdQ7OWRE7t/iRsLyXA+Wl41Fd8eAjvgup3wIx9g/
	 vUr4Tjh35Do66pGISZVd2Abp81xXVBtKKWxZ6sn6CruflEph6n8MWAPOIQsD/f7Jxl
	 mjlLImt2vNq5ks9pGwDnx9nDz6DOICkE0QjyldYHvRJbwbORwybLjqG2XGOpZHdZcn
	 9WvUAdaD+IBmhTn6ZLwarYAezKe2MeiSBhxN7cdk+MdiRR5+EaoUNFUmzyak51mp0C
	 gJ//+rlE1t+y9DQvIshvVhIX+c8w1iyIKrws5Cl2I0xp+zu7JVlMiotymrk+J2+/ls
	 at6tPmjgBRDnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63948C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170152189637.21938.8065212950128949599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab76ececb0253f0ae4786d345d9325b94a29c50c1cf4d0f4f08d1183c6208fe
Date: Sat, 02 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701521896
