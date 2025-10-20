Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F629B777
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760929794; cv=none; b=BDb2dv0VRFtWTeSCKSD8Al0TAQdZ7ecYZfwjv/LxzTr/8+w+wrDj4W7w3qgQ9pI5YBsFfwS8bHP9nN2L3pmCzfhh31lZStgqsvg3AgyXaXn9OwfiUNUhmbi5VRDp4PqIVd4ZvzlEEGCRk4Ul0H0qpQPdi4YtchICL7HCY7LHRBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760929794; c=relaxed/simple;
	bh=b+GvLL+0UYDQOj5VYpbAyF36lmMZH323Oh0KyHoFCZU=;
	h=To:Subject:From:Message-Id:Date; b=O7y9eDe9ngVfUzj2e3HGs35Oi2EbgDP88gKzhOvw8NUs77EqayaM0CQq0nzgsVSPcJvkoGY7qIcb3QIjhoKn/OcmFXV2w6uczdgWpjAHGrtKpnbF+woCCSzXF3NMusA8jxW5aPGtiislBd598pyK1sRRmo4Dt9K5FF3JSbxwlzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6mokCfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6mokCfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF32C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760929793;
	bh=b+GvLL+0UYDQOj5VYpbAyF36lmMZH323Oh0KyHoFCZU=;
	h=To:Subject:From:Date:From;
	b=o6mokCfK7JvJvB7kePSvSAUGeDE+1Iyuq5coA+1tHrMoKPXNEJd9euV4uJY1APFYP
	 g6EjK3gf22rC05GMGi0QElPrJOgAmSmnVdWPXnp9+bLlm8Ab/v1xpGPWfEBQ/Su5NW
	 dC+kzLXv3cpTHdAkVRoMK8L8H/IPmBHbZzK9c/dEJMbaqHnxB6iE4Djhg7az8YQjSG
	 qkdeJBoimHDaAXfe/bIkLfCBhR9Nm1PLxzMCn9Ic4OmSu1jhcy2J8Ctky9mSpvJCvR
	 mKIjkJB1v/KIYJl9yU2GuLjj80uJVoj+B4GI7nAuW9plRpRczJWeQDlkf8chPh6NJM
	 W1Uu+Hyaaf5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F56CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092979360.25631.17776560384062403040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304bc768d91f4cc2bff955e989c638cac52b2034310595d263c0cc612717a456
Date: Mon, 20 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760929793
