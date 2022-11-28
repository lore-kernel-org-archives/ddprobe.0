Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEE27E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74156C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669601454;
	bh=2MHvnaF0r6QUfeBrWi41QF2HJj4HCin1sDbrpl9Wq1U=;
	h=To:Subject:From:Date:From;
	b=rb3Sw2rVf68voksjfTmREwGM8ENV8bTz3JfsGNN8OQ873waMsSkLtqU8uYng7d28z
	 q+elsF/4ds7fH9PFn+6XM97Pj1EHIlI//t39WXqhTCsuGHSTgk8GXH+vlZjFBVrxS9
	 XpMzwklU631yoF1MSodDYGZ/k5PKoPjfdK+PrMDO5ma+2FmZIZzEtqB3gtzFfai10k
	 EYVDTV17tPb2wm0DO2WOVVDceYloM2+fklosKfRbENymDs+YVlldQkeAMHeoOC/Pn5
	 pTR3ulezIt+2aowEmsTNlpUjJc5yhnvQGwtu3hbcME2JCwLdDXlLw17SiPq1KicYXm
	 7qwwlkrTvdLww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58554C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960145435.9279.7553604945347192136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d45239045ba60ff020f42d00f1e7f3bea0e135e2afd4a385935a26436b1eccc
Date: Mon, 28 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669601454
