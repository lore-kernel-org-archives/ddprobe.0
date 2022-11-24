Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B213D1FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695D7C43153
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669272054;
	bh=uctysj1j3NYFH04GG3hhCWKg/+du58Nk1yaRixx25uI=;
	h=To:Subject:From:Date:From;
	b=h0/X5tDpjbRdaQkJNuWs1FdnsTAlwCUcky2a+YKMpq8BTVmcMNDKaRBWfMtVlBGJW
	 6meB5+179Atl8dnTBo/JElW2FLatRMcGbrtpYdfteq8dCin0j2oULCriR23yWS1VAl
	 LUjuul6k5k2iv6atnrkVqYeD9XZ2XqOGrma7RkB4hyyCddGqZzurLuXhmlBvROsCOV
	 rse2NMfBqKTA8iuimhD+g1imSCOy2mFKeO2wsrnJftH02JjSLXwyufx84gBhoy9Ns8
	 UPAZ2uscbE5L7FUX3JybGHznBVNIvK3T0qIcJhTWh4dmTqWAhZMBID6wc82hSd8XGO
	 onWORSAMvxqMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED6CC43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927205431.17527.9456422947352085926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1952731f5e754676e7f725890ba1f1d056d0d589cd8ced0efa677be87b471dfd
Date: Thu, 24 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669272054
