Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196868F5A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725918954; cv=none; b=FZYz/fD3e0xU4uAoY4ry7lAlUZg+ARFF/xm4vVdS1fPfRkTyYi74f1LMc8TjjvernBxTYInQn/n7FqtMjAQaFU7FY+WY89C2s1RgoG03zUSMCcntYmqjp6uAeKOJ3F4jZkvcM3THgo+IszJnATm0aXlYp7xxC7MrGEB0UiQTiAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725918954; c=relaxed/simple;
	bh=kqizu64dYCpjk1hhV0EH9IKkd3TjpKNsEk1qgUUJUqA=;
	h=To:Subject:From:Message-Id:Date; b=Uam97w9007X5eMA+ecW/3YqrLZZytCgdVtqYjLvUsr3JumeT1RKJO7wNayj6piqLvJPq5IiyX67gBjoyiPNYlBAy39/L5gzMwM4Esg0agfCvhqQdOITDVHoHRVptWILAi33+3Zx/3RofhP2pIe/o9fAh1melmjKfsN+pk/dY03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsQAjjBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsQAjjBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDAC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725918953;
	bh=kqizu64dYCpjk1hhV0EH9IKkd3TjpKNsEk1qgUUJUqA=;
	h=To:Subject:From:Date:From;
	b=hsQAjjBUzWwPVwu7I/Iz+JQVbd0DD43em2J/5OnojDo7PTpx/xwYnYXOI6meL/RUt
	 nhlQ0K9ystXBVPUedpYTk2OaP3t3QfV2dm7brfrx5kP6/vCiAIDwg9vBNyT6YsMyAM
	 q9ze9bpgtHHEuNNkkUgj9jC2k3BAqxYCCJOdhuxEUUT73FyzNj5BAk99WtI/cIgKs8
	 qDjcE6XpPvzsOJB2iP+eoKkEuT7kTlGlhaAbKt5BXauQdzkdSVgSG4AFt5nQdZ4Dk/
	 GB0AZxy86FBrMc1IZPTxTSnM8ArdR7nAJsYTztxjMNkoRlyP56CwfqhNnLOJiF/F77
	 cfMbiyptJU+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99614ECE589
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591895359.2263.4881933279341925911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65103f7ff12eb1d4f2845fe3ba20082ca98282f6678bef571375beb4564d0253
Date: Mon, 09 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725918953
