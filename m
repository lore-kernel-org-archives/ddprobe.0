Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B279B7E1A
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C247C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663705853;
	bh=t15xtDDiPzBMjps29VJeb40p6KcLqPzbabwUY/0fR8w=;
	h=To:Subject:From:Date:From;
	b=uKdmjtp11Ahi+BIgLHSKzXa9RSgbERrNya+zg9GGir2Z6rgis8oOzIIoxHFpRvmA9
	 nS8kQn3GyCDKP1WRfaVYkM4hrCVvQF6ClIbl0I8oZhOXD05K7GIoNEhc57U8/9PZQo
	 SytOd+UKKTiEs+82vCJCQfgtyzEvP+1fK/5Fp0fINbFegfh4GcYrnKhS63w9NLC7aY
	 AjfdxzPAjrPaWqpwpblRvvU0ab9RwxrMAHHGoP4tMy38EJcNm3oV31g/NuTCginQbn
	 NQ55fvrqSBL8Ibwyy7/8Io+DPZrHVeC4DqJ+DasKuS10tC+yUYlzqLwVib3nf9A4He
	 4r6fI3vLvliAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520E5C6FA8B
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370585332.30863.3694361528076913897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10baa3fa281673be28b60808cfce0c7418cd6b342be2c05b1df113f60ff9587e
Date: Tue, 20 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663705853
