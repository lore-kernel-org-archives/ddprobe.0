Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362836FB9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718842763; cv=none; b=SseoC5Nx7YPQ8GlqSDQwf/BUb0g2qO5WGB33CVZy7cdAjKOmi/hTzLykGJgdpZZfYU4lK1h1XdIk5x7GYjL/prUp7lgiZ2I8tE3ERxuoCWxFkNvwOwNVSfxhMu24ZY8Ft9IisTVMtDN18dAutGkBP6x8H3qIWl4sfEJb+2bcxlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718842763; c=relaxed/simple;
	bh=f1Mwssz601sN4By/InOHToi7pacVeHe7aTZNoKeqqco=;
	h=To:Subject:From:Message-Id:Date; b=XxwErUIc/qCDAZfKqUaRdvkT4LwLDzxuEoeCj0tAIkiNWKha6lLTrBJea1SVunUP5QWSmU7F7e1UBcXYsFJzwBYR2J+Ffn3Lq+zHjkxe1iI12/wqov9gnNGWr7ZmB6WILqYHdkfN+9Jy2yXPDJssOHUNZqVMosZ4SWYHA6nKB1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4xiAm8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4xiAm8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C83C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718842762;
	bh=f1Mwssz601sN4By/InOHToi7pacVeHe7aTZNoKeqqco=;
	h=To:Subject:From:Date:From;
	b=R4xiAm8SqnQ7aCnUyNGT1R300c4AcuiejrbOJeEwc2OybX1fKYY0qYSprVZwzbRFj
	 mkHph5Dax5G/46e3KdJDYyiGmKma3RKM3hl90GMBAOl7KeTSaYmEJN4NWjqT6fhtUU
	 fM0wNnazsF/QEz1DCs+m1idt87TIacUpp5gif4s6YgXu9CAZNIMELGSDmH03t/4zPt
	 ZnvAvQdsP7A26P9m244gHXFvh6hRx8xAI4Y18Rv6rTvqcn7lcUlf59s7cSlNfHiHn8
	 +YzcSlvETH1jQCBEnGO5D8ExKcy47BYNkGe7ya7XyNlZC9wSdFBq/e3hH+JsmmR3Q7
	 3KVZ67br1Jtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C328EC27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884276278.14298.9201555249268948837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8253fd0537340debaac6b846366ce3137578208c54df162ffe740200261b035
Date: Thu, 20 Jun 2024 00:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718842762
