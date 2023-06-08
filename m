Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEA116432
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686240785;
	bh=bUU3hXV9PNYKz/WJb/ZLKqHKMaL0uJLeOSFRy7jDxJs=;
	h=To:Subject:From:Date:From;
	b=XIFHU7Qkf9IBgfMc6w+bgdfIDFIdfX1e8HEJcBjDUz+TRtVO16VO7Zb1KpCLCG+Hq
	 Rs2y+uoe8IoMLbLcj/Xfv3yGnRXdSZHec4YAcCbZT4wE+qDrcBvTLPpChZukntap7K
	 CFsLJT4VlzeFnG8e22OaaDXFbB5RUBsW1YXmvwZhsK/Rc0pDYuT5ysvaLn6TjinwK8
	 NdEPLDq14l45gj+ruy3ZHAQhPtmuRW/75+DLrecLPz33WbmaBbhHebs466ZJaB0vmC
	 D7gcoNt2Nk/hF1b0Qnf9oqwrhR3XwS6QoJNbKQj12YEYAh7JCFtEycK/vLkZpe9YTz
	 HGN114dcYHF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E64C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624078574.12340.823793192388028987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6794310477c711a4063a48c41aa7aee60af4f1ed313b247d7069fa08bd988085
Date: Thu, 08 Jun 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686240785
