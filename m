Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24B6182AE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9422C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686167585;
	bh=llJAAgX6peU0SE8CIbP3O/UuKBVOP+cJyg/s/QOJGJk=;
	h=To:Subject:From:Date:From;
	b=nsF2eNg0Gw2Pd83IBSCmhru8BouLXGyRz3VmxEKxje7jCZyYdL3s9W+HcDbeeo38z
	 au9GBSEXKSJgjWB3GKHfYVtGm9B7aOm6Vz75ljVxO5A+5tcCHiFBaYWJGx0ceG5cyL
	 JHkZ8/nrt7tVtq9NA1dVfAvvTQWFB5V7wZrEACnVWCtJ9CHST2wU9C9MMHUMpLWYjr
	 pRC6DCNCelpI4+goeJ+33FbF0rs92P08VFYmuG74Z8Go9607YXm5DfVN+z42y++oGt
	 /YoAGxB4ED4WsxALg25pNQn89KeycTEnN4RgrW2NzvxkazAgjHC/L+PV95sqMTMmUb
	 DlrfsdwwImetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56F5C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616758573.10297.345683909875462791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02daaf86a196f441aa7f6bdb6385171c9f9be62ebafbb9c504337471720942b5
Date: Wed, 07 Jun 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686167585
