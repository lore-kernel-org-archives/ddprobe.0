Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DD28BE0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38EFC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687522988;
	bh=uGbP4BvysHD1qRXLiqOzxNtXRDeqVYb0+gdTxciXTok=;
	h=To:Subject:From:Date:From;
	b=J0W/qsJlVGR1P62dBQlNc1VJm0WxoYn3wSBTYDFcGxSU0gdOUj0pziw9pjR/dqMSK
	 +fuhetIZL5fEwxb+KBJBY1jp4dBhbJxFtezwIJMg9vs0vmYt2vSwrbgGHLCM8r2RwP
	 GU6b49q9lDiFwOyQfllf3l9PYSKfZwaWtJXNmSLTjUnaU/2C3sHi0fSbunrhpuIUCw
	 Kkh8rVwU93Mg4ZnWuyRkPvpv5IOOJHuYBGpkZHN5R1tDIVUFMLSCoWKiXSZQqwARRy
	 wyMYrAgNuNB51hP48BQL71KOWAJksB4yQznjU1YVy1LCP4ymEnLkJoplMFCqCDVat3
	 647QMqwc90UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D7CEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752298873.13655.14554448174672919039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8f638e5c41e727589ad5a77a3ca791d042b43d2dba817a27ba333560d42fd0
Date: Fri, 23 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687522988
