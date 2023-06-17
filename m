Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFEEBA55
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76B9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687023008;
	bh=HryM3+GaSoZdHgnLQQ8HHSyDtJFxw6yup8zS7g4tAaM=;
	h=To:Subject:From:Date:From;
	b=lrRluD1Uh0v3MQh+PuX2Bvt2mtI4mH8cTPCWHYu7uQKsvNeNa0N9zjvmwuCr03aS5
	 IlgIfjlPZZw7PajAbH8F/ibcoTGT5r+H85Gis/sgiNZmym0CP4SjMSbhENL/x7QSXm
	 s1AlkhRmINhJK19CxGIWEgouCXSSyAQtijQN7v8QTELdbrXgguBP4tJ5UpD/ltrhtv
	 WlXR4ERz3v0kWvUKOxpFXwKhDboCVhQEsFt/AIMS1viH9lguqTNvBxjC5YiYbay2nb
	 l4Zn/CcpdKM/OmoCPEF40ZRqiIs4arAg18GZaNAQl7RjsDr4+/SXYxf7lQHUAbdb/b
	 kB6kKVxoQHoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95FEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 17:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702300869.25329.8898849330158382494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3eedf6085b663eb5ef9d3df3c2dddad8d86c7737de24ea5735828d4ec1f2d71
Date: Sat, 17 Jun 2023 17:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687023008
