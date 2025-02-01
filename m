Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B68A935
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738394754; cv=none; b=f5NO5cvrLNVrvniOuk6/QXOP0i2fyfWqgPKvs+CJLAtKKk6jT4Zg3bOjzrcLKaeEGMemyrzQTOipQVl3Z/aykeq6xuuXX0sj8WIXyeGj+AooF6DXjHPugKrdrbO6wkFj1MzEEadiE3qcSYEQdpoTfg6TfBHIG68rsOECYE/6fDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738394754; c=relaxed/simple;
	bh=n1H8jd/jD8BIL6U3kXM0FEH6J+ldplPXZIFem5hA2T0=;
	h=To:Subject:From:Message-Id:Date; b=cbhxC5okLogy4VF2buTQxpSWsR4RCWi/s7ZHOdd6rdF2oTCvqFJqBcttiVc0aJezRGLbzkDFuxi9v0ECc0bK6vLTHXiLYsHVShF/d+qcIGUfwbNewWhGNULb+YWatiTp1s/9m2i6NWSg/qJ0Rjal8Yci0sxKX0FVTRLVXvOCa+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkNT4F4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkNT4F4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3902C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738394753;
	bh=n1H8jd/jD8BIL6U3kXM0FEH6J+ldplPXZIFem5hA2T0=;
	h=To:Subject:From:Date:From;
	b=XkNT4F4dSDBUUVTQkyZR4SV0t38UVZVSrOPqoExpZoIl9fUI4By1sXmff9F/L5O9V
	 u3HizYEfVxmvwamBAHQIyb3VP/50yx8318z3V+DyQPHqqifEDDjh/LrB72FW6A8c8L
	 8NH+Cgf+5HFmkyvPTcM6e4zKjMO63h+GWmRqwVAqC4MbqpFZtwhsssDvOvEYrzisJT
	 FU66j7jO2myFh7MZr9jxfW+ClfMrw8In9QL8p++HDOAFL9of/kF3+9iMdGt1q+537c
	 VBkXUfqmnYxd02UXGWwSJwCPf12Q3Cxe0wnxdwkOxLc/h44fRTKYVP7gl9e0ayn5/K
	 P7kK2PgMCUjWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E43C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173839475360.16777.17282748804138521276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284f771e4e759ff6517452b48c01f5d3a669f880357299b509241c2974aef39e
Date: Sat, 01 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738394753
