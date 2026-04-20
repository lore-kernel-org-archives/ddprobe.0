Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201030FC36
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776682654; cv=none; b=WxGlhfDJXT56Plbj2hyHM0vBrU0J81V7umsSXb4vpObt+X7Zot1grLz3rHaWIpjWgfFpULy6YDwO77jiFsABTaMcCqCoZ+BhMh1jBfrOXmQMhi4nFut0cLt11w8TpW5i6dUUNs7UJRGTejWr5pigZbNa3eR1HxGyMk/6OZrPdPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776682654; c=relaxed/simple;
	bh=Bvf/XUdmsZCq41Q48ARfNc/4ru8wdx/ifMCm1fVJac4=;
	h=To:Subject:From:Message-Id:Date; b=DWhLPevpg/+NT4Ow8CWG+6GU87IgAqPrqy4hVEt4h2XrTmDXUBKRGtcmV+q6NpV2tDRzRiFUjxm7Muzt+kPghOuEZWQtPwo7u9Qle2cpf8VHuK5dA5VGEX80XerSyhjexlVmEzwZIs8Xq4qKdaREUguuxFRiuaNLGZ5z6J6WbBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpzpsJ5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpzpsJ5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C2DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776682653;
	bh=Bvf/XUdmsZCq41Q48ARfNc/4ru8wdx/ifMCm1fVJac4=;
	h=To:Subject:From:Date:From;
	b=HpzpsJ5vbOBL+c4hSdGbRWn2WsDdSczP4F+C1NecUpqJlBClKQU+uCjqH+P5ygDLU
	 idwHQzH2TSQJbb2IQO163tqNybW8bjPOQe11NFzajQPyRv7FUCaPkV6Ww33DrKqwE3
	 VdwS17W7LgBeZpvOpUENuay3TW2uieB0vVG4a+Qs8DyL5K8NL14lS1utPVLv8kzShQ
	 0VfRdMgwWUlDlQZukMaMAFX/wLmfux9EavSemIr3tNi5Fk9cDvfd5k/lAw6IQs8d+J
	 CD26vtcLO/Y/HNIP2OcxFkd30dXFzQsh0rNVOYk+pCnRwS1qVKqdhRjQJ0jwnjY1jL
	 DjtlQ7K+AwpDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B8F5580B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668265368.2408.16362310528142196264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece76784cdf1efc5cb219cf865b17d2715f49a65beb6e33c310d50e2cf998894
Date: Mon, 20 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776682653
