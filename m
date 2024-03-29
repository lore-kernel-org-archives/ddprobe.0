Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF2710942
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711741697; cv=none; b=nASd5/zc7dcu2hDd2iCbMsjwzhJcmmUvmLAAur8Y1lnJzw53aro6+ldnnstS3XVTErO/41hpeE64KZ56Brcq0Vt7xJjiwOpdIbvY9qxBUlkZckYPn5sF5hxIwKYcVMvjiIuUN2Zf6i3CsI4qLUW9F2TjnDX+JUVV8vu7sQ2FBlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711741697; c=relaxed/simple;
	bh=jT4cBW+zSd+6A3MJGhAB/7enxGywfdfSMqK3z2JVE2Q=;
	h=To:Subject:From:Message-Id:Date; b=tg/sKicmuLNY/gwzQWV8PRCMnlO08OW43Tex0gNDxKM/LQm1JvCwOAhkmjPvy3F+i8FRLy2V/HJWg1WiWuhj1oZRz2IaG2qGQk+SsTEhlj2o3bClSOUfvNWdjM0pYEVkIjfKUg4QrjFbt+RYV6oY0Ilm3PbWiV2cIn9/DRfK5cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPTUxW/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPTUxW/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EB5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711741696;
	bh=jT4cBW+zSd+6A3MJGhAB/7enxGywfdfSMqK3z2JVE2Q=;
	h=To:Subject:From:Date:From;
	b=DPTUxW/tfvfrIynVcUAUh6VrTlRkE31HAXyxlvfztNJuVqVJlcSX8scna985MploG
	 Hb9fIUiHP4GumuEVE4L7dhv0ldT3tWG8r1Pe+0Z/gvkf27A/kW7EcRUfIfK+6hQpic
	 thR+qgfm157fKL6E8tWAeLjWqBWPDqBMgLiatARZZHgF5m7Qtl1YdaMEUhn7fsfoTO
	 j5sx6I5zWD1n0EeI5evw3R8+yegRiRFnpw7JP1FO5nJe/ZPaaCJj25b+9LY1xgADJ7
	 7JBCrjnk6WkR37ZSGVb54bil/dA21FXsK2+xLzHkooya2DfUV/mlwOSRiyN+ja1mxz
	 38pQ44BajIAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69ACECD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174169642.3370.15921362641254969506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da97f0b068734bb0f037d435cd0403b5046e95de635b9b38700cb34a259e0d8
Date: Fri, 29 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711741696
