Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503A123BF
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA3C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692830048;
	bh=b+DDdSmxrL58AxsK7OCXs3SCaNXsU/k1OqKMtQjD3ak=;
	h=To:Subject:From:Date:From;
	b=P8EaWOeacMLFACZS36ZzXnbdKEyZfskUdLPiLK/w8+xKS2yPd7PQyD0JJNBBg/htr
	 MTRj0Girn4slex1qVfBBmemZVjbuAVyYCtwISDRVqP8tyZqwd0ivukII+JvDK/fxc0
	 5Dldw28lkWMxFama7RrfgALSQLUaGzn0kz5+jqgba5s744ut4zWEirCppYc6ESWZAZ
	 o9giGuXj+JRRvJc24HfEWzu2O82I5+TFXd9Gn4lRN8G88At39aNm0dVek3PoxigDIw
	 JMaCVYybZ53qsHpJwlyrCb8kRr4t43/CxO22Zjcs6M80LfkBH03pCvwkTQPxD1uZnG
	 zH60yVfTrwERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3359C3DA6F
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169283004866.27894.14661882487003201485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9d4e0047bee24251fbffb6582c4c6569c590cf0d5c44ed4c4bfc2b51007331
Date: Wed, 23 Aug 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692830048
