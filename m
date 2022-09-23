Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64643D90
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4C7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663944653;
	bh=XegyZ+YE4PAdUxfVVqw+897LcKnpqRZsTqr34Sl7lTo=;
	h=To:Subject:From:Date:From;
	b=rkp2+Zd5SRRITsPvAVapF+sErJUQMg90nCuBt084KHnWrxrtNcWrY4APpEf46nTqT
	 1kduy0XV72+jeZXwv91CalWjc1iMOsckd3qkxQj5pTKlQpy97+RJtp+Gb5CuXkl7Dx
	 tB59RqRK5zzrpsrQwxyDhl52+8yTpLjXRt757a7fspoce+M5XXIjbdOQ+v2+O/1PrX
	 2W8jscyTAJLtFXO8bTHqwFuOQjhaELRlsa8QI4UEWfbKUx8CGOnIedT38yzJgC8C82
	 zyShVkO3fEXHE3Bw2RMoNNyi1bgJLlfxiRaMlf6t4BkOYAjra2wZFcVS1x68d/yrpt
	 tf73RJdfQuhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9D5C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166394465331.12273.3735750254190351801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32644d3a2dba5e419ecec8fb5c1a556acf3f6fcf0f8e52988ebdf5882ca2d9fe
Date: Fri, 23 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663944653
