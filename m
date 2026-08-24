Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F76BA34
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787529634; cv=none; b=qL6GqOjcl5TOji5IScuisicPQcLEX9uYn+B6XM6T5DDhD3q7xh1ghalQTUcTezudIOsgiu8P7DVktpPLmoPelKv5nksBHd5h1MGN8eiGGpUf6IXV9otjaA49jP1/iK/g3Oq8rcILX5bjhK33w3k+V3zkUTYjhzb5Yoc4VVaE1Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787529634; c=relaxed/simple;
	bh=QMnbqXHx8bvbguKhXyP8H5DzpFYxft0itTu7bCIJgFg=;
	h=To:Subject:From:Message-Id:Date; b=BkOscTQrKXz0TyaHV6yeKYHqdO0glXGLYEZ9kid8gYxACrEDYVJASKo0dTCDfcnBf5F7Hv+LC8QHZnuSwRElOAdtKy/YdFyCuGA3lcjjnIwmrn1MWq4qO/NZjIXhfX+dsGUt3qIvwmb95GK+azewB/kNSP804RTniqfOU2jlLCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIbbNIHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIbbNIHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC075C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787529633;
	bh=QMnbqXHx8bvbguKhXyP8H5DzpFYxft0itTu7bCIJgFg=;
	h=To:Subject:From:Date:From;
	b=IIbbNIHB8vRUk2kDMwIKaofb6EQXnASj3xAFl+W4MByn6IADXSfAH5sRa1eM9K0RU
	 OuhdvInhTkcVG4mfMYsJE6lLu/SICvGUMMNKoFXc2AvW7oCr90vMIyUU/wU1M/4Aqx
	 px35ksCt33hEzKD/cMKHypdqGu5bHAfdnGBrw7X4tt1tsAXqDZOp2kqxORVMrDrfNO
	 6ElbqEBKLezYClDNfvfUL5DuytJtmcy6E5GECAlJjO2UvKxyTX5Ix08bTLcCG0nrU6
	 nCxUZaT9AFFo7PYevo9cdr5s+4Z3/Ty/kjX9ri6I0XO5HgNw7e0/mjuvVqxBmyPi8f
	 e0q8JlCvHLZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20F0C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752963369.28985.15006960846097994522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa478a5247065fabebd7896059bcf5816fbe50319e694176608024c6b71f844
Date: Mon, 24 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787529633
