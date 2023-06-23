Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3AE17FC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CDDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687506788;
	bh=pL5f78L/Y3XGvNUSbbJe9rNwgsM4EkpoDXqNf7t2rM8=;
	h=To:Subject:From:Date:From;
	b=TZh7h5srhvDQnOb3KFAxRVDMbXpQNSYfcD+DG1rmi6DjfyziNcsGUQbmmNZx3P1g5
	 QHc0dTi0nDsxlAh2qym/IzCdW6Acy8Nf5+i1JAFxR/P8w/pay6a1+yrH7/9afgB4A+
	 Wvs8CnWihOBFAMqMnOO2yFEZV7nT7GsUaNeVLwP0IF/lLBGLpf2LKIxkjI6rFeLoFc
	 3BBYftRDE8+khGHIlh2vMUaUyWygIYrCU2N3RJdmXO2MVB42uHAgguWeYskfZgJ0Oi
	 vt7Mwt6cbyaVUXN/zjo2S+6pIpgX2+zvCx8mBP5gMdA+dxUxJi+XcPoqpKuiUiPWtu
	 reAPH915P8+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A329BEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750678865.17306.16200790113887595241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cc0a13d7e01d1696f5210a4c51b8492a9f5ce9ffdd68675fbcc3d895372bd5
Date: Fri, 23 Jun 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687506788
