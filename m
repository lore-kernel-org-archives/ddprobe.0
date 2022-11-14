Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D714D10EB
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D87C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668400254;
	bh=T4Ea72OKkhRkQksVGrSCIexxs7n+NWAm+SCnEj0kkRE=;
	h=To:Subject:From:Date:From;
	b=sc3S6WDmI993AJvf732YJKg1RkHqox0a/+jskqWJ6RUX+ctMos9kQ+k6V9zCtd4B7
	 a4K7DuJNFgubUqJY7EjCI6tanDM+CTP1aOf4ibP7hOjF9YkRX/IYFcFLtsRH4fJ3G7
	 MCtuCfUYsPVbMWx18YWtKx1qhcsCX+0eJVoAmkq/FHfrlpw3SIwPtDiuwsvNppzbFv
	 4YxbfTcReXuyVFG8aI07ndtUCH8GSQpGkFfpxThUbHUtlk1+TeWppBYRJTeOaBlTdW
	 1zddtQl2+ojwpAlwS+UOTdUvlBpC2KEFES4pk3lIa8EZvmS1GOIg0WKrfT1Rou2RdX
	 iwMDbj+LT1Jww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EC1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840025435.15206.17211264793275551130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafabc93e0c08e5e95e0a35154b61c17700838da11bd03284ae53c6b8be2c8bc
Date: Mon, 14 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668400254
