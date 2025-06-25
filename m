Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4852580C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750860593; cv=none; b=Z493aWK+RAl+XkfzR96Uhw1A89UTuAPojPSISO7T5HiAD7IFRNRE9UUti+7kkbKB6BMDuIL0aHwVQATfUP7h9TzLMSJovtOatWehiN0kW3zFYhc/RKhiJATLdnHovy26N0VYdKXyz69o+H4FIiVSNrjeXE9FsItgfUIsTBOKkpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750860593; c=relaxed/simple;
	bh=W3WtiUpOZpYNS838Q2g4Kneup23WUx96jl0l3MKwP4U=;
	h=To:Subject:From:Message-Id:Date; b=E2YCZj8FjWSb8vPQA05YuWbIuZ1e2qPVdj44t3FI47/8Q9oePc3YaW2ywDmUF77vdcIEJOw/2dAZ9uGqGKGGezTKJnQtD22mBXu5d37uQqyQKtLCgS4mEevykmqrt6PDUhrdX5/qPF5m8FPHtEAJM+YsdJuB41UOesKincQRr/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh0sxleU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh0sxleU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DBC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750860593;
	bh=W3WtiUpOZpYNS838Q2g4Kneup23WUx96jl0l3MKwP4U=;
	h=To:Subject:From:Date:From;
	b=fh0sxleUlWGDIhxQmfH0N4aRbtyW1cl/etYwsxOGw6YZb0V53mY94rTLi83WcvMfh
	 dVsBqMo/QI+waRE8XyNqVRrhP3Ct7w5iWeu/Ed/8R3E/MB2BL9lLlI/7ASO6tk5AHB
	 KA9MLUG2TTkQtGHw5qu2fclylOK+dkuE2gddE6S96rV6w89behFfSdjjfDZDiJwCcd
	 ZXEfoGsgQMJ0a8LNe2qdkuy184eoF39nADbtxqwPzKl2HkVkuy+sew/lmPkfCNnTlA
	 sPwVKZGr73ivff4nJDUbs0GPof1ht8D7mmQJdXKaZ7q/9+tTRGSxkFXowhsyJkgapK
	 olH58Y2sSlAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F180C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086059357.8673.351557513896008817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6a2e35be6ee7ec3f5dc2f9241df4d8e08b5dc1b9b1433caa69ef4ddd13cfb5
Date: Wed, 25 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750860593
