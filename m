Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38656883B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCD4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682724905;
	bh=xqbboAGsRcVlztMzZf5du70NRP5E1hQ+5CGZNbiNgMg=;
	h=To:Subject:From:Date:From;
	b=f+Y/MukHUKjz6Sx01eow/3pdnKysD4iyokJylKGPIB7dG1cxZp40CoIAQkjVytEDr
	 XAboXaYERkU6CNPxNeu33YyfrsSETQa815AiAYw6fpJRhqj6LsuhpN8cPVxUh0lleS
	 uALeTldNXXYdt7+ehqeCN0BL/ljaVFileFUs7Ch06HeNjftX/Si99j009jBLqIQznP
	 MISx4k/sR8wvGQuvqfFR0w9etDlo+2+SdtYaQscMwnobEiFMV23lnb15xRzltt4HcK
	 P71a0jMBhLYtrodhsPsJc2+vG8alfzT+CODrBvsLVsShaD5XzniXWlbS6WZaztdXha
	 KT5IbBCBl+RrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85F2C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272490581.21285.16664313307078677978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15df73e849373c8c02b902d3b28de586d3b16c04a6cb0733e708fcb59cd2455c
Date: Fri, 28 Apr 2023 23:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682724905
