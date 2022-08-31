Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A754E4A0D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 675B1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661962853;
	bh=2dN7Ozo0RvMFt5YEsueSS8QfcrRTVm9D2uTd1GQVBPs=;
	h=To:Subject:From:Date:From;
	b=uMapCOaP/6J8OxUT5cps/B4kWPZdEwcj8KnRkPqLYmUzGf1nJeWp72Ne0DY3ndHtR
	 ru1erz4V3YXYPxas1jaZuuS4VyIlIrfqtSf1Gc0HOjbq2fSTHhe/aabMjgco+HJiUE
	 6DkNT3trsfhV7xfeQOs/wQmYjfjYF4HFsz5Hb80VTWWpW+iZ/zPPHtY/k7aspdFGY7
	 Z73S3qBmQlHZBSxfGkHOb95e1kQ1x03Nz72CmhaNVOeypStk/IwXAEfERboSrve/3Y
	 GkQizOOK02t2Aj6MV3qM0Y/SImMTpyoLlZhptJzbq13v9+hRlCyjdHnpCW5Yp6NUt0
	 nhQFYwkqREE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA94ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166196285331.8108.3314163898371418113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcd312256270c13f38ac30cc96ec76ec400b98b93769ea32f700b20fa48cf4a
Date: Wed, 31 Aug 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661962853
