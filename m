Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05E920E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BB7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669593654;
	bh=sBxKjj+aagKOVLpAxC63KDMFoqPOP261XQslrrPuQXY=;
	h=To:Subject:From:Date:From;
	b=sPsEIwQ1ZLfUT9fE0ErWw/gQwVpBNQYMKcDznP35b8whI2jsiBbdcPdLdfz9nxUK3
	 AgMMkFAxf/7l+pyqRxNPr1aQr7TO8jm3kh1lygcKhQVbYPeb6ikaeFJFoRnQKI+EYF
	 KboGNfIbPjLqijoWXKhVzUHVU8g7S2HpRl7tC394yx6ncUslFE8Go9sL4kWeti1BfC
	 bX9Yg0zloNJOGtdmzA4nN13srUpOu2gp98Y3GGTMxEp341ExOZ57I8KywD+lZNWO1G
	 bnjU9ptqLMw+R6fkHKmVxsXOLz4q2j4h0o2VAoSyAIpt+GNA4LnFJtxwsbCKnsTwyg
	 yvtxb6G0AVuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57126C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959365434.18232.4461871180180312143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c556180f0cb8d7d4e4a4311cbc12a4e25c7fb20f2500237dbdd4cd7b4d6bb38a
Date: Mon, 28 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669593654
