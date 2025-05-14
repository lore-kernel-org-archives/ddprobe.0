Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDC31FBE87
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747264794; cv=none; b=RuyOtc8LJAjDkcEwhmkglPR1+ASr9MUT8a8w6bTUeK1NfxA+okzRhwS9EAAUes/w2DmGWOevNeuw2bMhO7xhq3V510xWDfMkY8BCeLh2LVUQl5YGGJFSRQA4gAolrRuueJWlt6WrwDFY6RqtsubXoMAp8bSkrBRxZzauNvPvWmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747264794; c=relaxed/simple;
	bh=W76Hb0zeSJXx+mxl9nwGim7XMR7c7bhulAsnR1YbiBU=;
	h=To:Subject:From:Message-Id:Date; b=V6Xni6itlqE2ZSc62yip12ZX/7lL1soOS3/5nB3ETaSHmL9z28LeCBPYDu9MhqIo9ORSbve0hBl6Rg5bIyTii3iTnZ+okLCWjAVmwT45ZBspzkTFSTykS4SR9zb5TpzYH137PApeCg5Yu01KHa6jtfJoVdLgoZ8Ffzm4uq1FgsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND0vcHYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND0vcHYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABA6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747264793;
	bh=W76Hb0zeSJXx+mxl9nwGim7XMR7c7bhulAsnR1YbiBU=;
	h=To:Subject:From:Date:From;
	b=ND0vcHYFW+lGeSJihlqd2y5aI7k/hwlPTpG2xq62g7jvD/K3NKEP3F9F0MpHpRcYB
	 0nM6zxDXYpnnV/h8MgPEtV4dMEp0YU6j9APQ9cDpj133FEApQapsGK6/TxVmecjdSK
	 qfSBDd5yCYfVkPxvGb5Fe7j+VHbzZnV/wvRTXfsaqkmWDC40wtXUNJW2gBsYqBataZ
	 TtYh6NHfJlMN3vMfpAFxt1a2InypzYUybP9ZgQ6pLlDKXY5BDc3vR3HCuvThwZGNCL
	 d0wqCQzV1EhAY11uDqQGdkn1AzLDgXw0By+1xmbBZ97YTXtoQjtWO/+DMO2X38Xkz8
	 Theg13uKEHRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB15C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726479358.24600.9713263908753919580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e0babc7563186fbef239ccd96eeaa27a4ff899535cf072a8885179ed83b2bc
Date: Wed, 14 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747264793
