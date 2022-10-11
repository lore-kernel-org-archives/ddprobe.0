Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A492564
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FE9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665479453;
	bh=SJx3CKWFZpsDw2oWud4AaS0n35LTdljdkuHhNfwOFEA=;
	h=To:Subject:From:Date:From;
	b=KlCtquO42+YBm2i9e2E6/kBOf+96m4tVhmtnST/KWmr8veVu4ZJZ0aJpJGo9tlBWN
	 UYjkggOybuAar6T2DP8ZUqk4oVlkxiZNtcDCZSwe1d9L5m2mB3t1VlP8f4o3tLL588
	 QrSu8US2F5UDzBBbj2nMcaEKpJf1nDBaCrpHfClek0W22n8N+VzR3PxhBnpzDrEsGG
	 IS/7JBduUFOsPpE8qQLjUz5bov6ob0F5XHjdAjnMzCFRNOSvvqO3NLqrTPN1fy7ES1
	 IgCdUz3a/wHoT/+KsN2qCnHSxYME4LgEfRE8jfHmgdBy/qMLPS66Y3ws2HcCYfZDmX
	 fp0fJm0pMRJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F9BC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547945332.3100.517779481987693363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121b6d0c19b648a95eab10e659a0493973a00caa9049d74b6f2bd5e927d1fc90
Date: Tue, 11 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665479453
