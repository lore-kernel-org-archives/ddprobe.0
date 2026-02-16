Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F57723D2A3
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771245894; cv=none; b=q/IOq77iwT53StW5Aq0InpafOiAHJ5On/vIQS4QMi8bW417um4F6XIKvbrqKpHyMlNhOMafuQQPr0trWTblXZn3E0sCo87jjdqaI5Jdsayys3tCD3ULMUqtcVJieafB+qcYpNq4QV/HvUmxvVhqftvi1Ae3+gGu3gBzEed+vUm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771245894; c=relaxed/simple;
	bh=XABUyOeAe3QGvbl1VYpPOyLD93TepWjK1qWcI10w5Js=;
	h=To:Subject:From:Message-Id:Date; b=kj2LJV4pYGUMSgFVUu/h2Llt3XsO1pHLtURuUAeKWehrMt2LsKqHNE3wcl6xGsH6YkxXzvHgsJlkDn0dMUkxL4j7NRwOUkbIKqH1nIrZ1AY3yUoVGdss+k/4TfkDAE6SH/Ck4xOHXXyb0I1eVjfWTtYr13uqN2TRhR939UTKa5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBhTWeyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBhTWeyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E0DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771245893;
	bh=XABUyOeAe3QGvbl1VYpPOyLD93TepWjK1qWcI10w5Js=;
	h=To:Subject:From:Date:From;
	b=sBhTWeyL556C9YBc0oein3GcD7SdvEbabMTXwV8fEbSC+F9+debvguweVb8BvWB8w
	 oN3AgERlqai8XlYs4JOBKhePbGdNSckBOKQUzD81gldxd7Tc5N2jMxxifbHI14+04U
	 v7dDS5si6drTrNh/OxPpbPSrHADiiaGpigtfgVb7HefGpkj7YrH6/Zquy8dZckHogq
	 AsI1NBDftI3nHCfuKE4aAB1rk6HOR5/3Q/WDyNj6XcFtJSIdRGo9tV+qkGIqWgTzGF
	 N34HA33bcbCCgqMcH5sEoguLd71uF5kDE14zl/SZRKGQONncqnjo0Ctc6Z/gFjs2hw
	 PxYcczx/weGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1FE7BDB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124589360.30564.314826948947861623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9922764d0662f1050434098168eccb9f5528f0230078ed07e39a6080e12c93b7
Date: Mon, 16 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771245893
