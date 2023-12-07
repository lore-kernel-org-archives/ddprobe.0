Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090F015B9
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blwa8Clb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5E9C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701914896;
	bh=r94wYA3O1DWAUUZCaMGQMo+aa8YmbHPOvp5dU1TAULI=;
	h=To:Subject:From:Date:From;
	b=blwa8Clb4X7Vno/mJ2GLujhLn6BwkveCgFTDAbGPiTbiWBdgyhFMSnmYSnP2L7cvV
	 sAfbjbinxyv639FWy/uvDN3ndYzwUbKfZ6HdxhDXtEhqxAMjhrgX9DjpXepyYtdjsv
	 qQR61DrlXlI6HpY/50LLbIRtzGAQb2F0eFjd9P3n1UrmVa8I6hDLBTKt131Hx1O7fW
	 rwpb6xCj3PJLBh6lE9FJuoxUUcl+S+AXjumA2ZrrV/4G+PYAUsD6n37dd/xdun3eoU
	 aE+yjzQyITrpOipRvEVg5DamADwj8YnLA2bR5oSwfichLkkJb8Po2c1K2qYhEt6+CS
	 j91wdU8xt6+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C66C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170191489638.22453.11314960645236889096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502cd85249d1580eaea45426cf67d93bbb1b51e3c89caba7f13d9e2e49e18a48
Date: Thu, 07 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701914896
