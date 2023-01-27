Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA213D8C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51FEC4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674850385;
	bh=pUuM7MLJ0SVxd2FGdJdcABAy6qmj5jMyOKs5EVi2IZw=;
	h=To:Subject:From:Date:From;
	b=OxffmIEkpaeg5cjHB8F+EkaZT164Z+FVwCEPqCvellhkqwp+lrGe+uqwKbKHniwNh
	 uBke85Y++PZSXD6QSk2XkqO5IWPXYGd/1kNnnLAut8gT54yN4yiBWNL8jUxEXO1Kqq
	 hDQqJNyUNC9TLXtTCpNTrOd1l3CZ9k5ImzvOlwOinmb4vM/Q3psg6/zLn1SQ7OGMZH
	 RD/+ex/WMZ2nASwaEEEmrUWulhT9Zjl4x/1CF8skHZlZoyWQKEzgFiOSHIyiomCvwi
	 5lVRnKT8gUqp3O88LevzEEIHELSgAUvxH12X/iuTo3rLhNWqWsvIn/mxTUl/FwszQe
	 +9gMvg3YhMHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA55DC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485038575.16381.55793333979786352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f5ea0c7ce5211dabd4551e6e0ce9a866ad124bec31ddbc6e8618b410cb5b25
Date: Fri, 27 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674850385
