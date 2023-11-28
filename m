Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095E9481C4
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vj4G+fds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCC1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701215896;
	bh=AmNCOrPwTshsKjjLcTN9+P9aYDZ5+egK3AROSKMXNsA=;
	h=To:Subject:From:Date:From;
	b=Vj4G+fdsljlSmrqC0Ys0mVnHpGpcIXJdytANgvnhHUZspUvYVjJ1qEU6gfEZRvg3n
	 lsTLurtUv1zuqrWMn5xSFA3LpJchAzJgw8TnR9x5HDk7tzvUXyVMAMjMo2gojwg0lE
	 j0opaTEcqongzLPqz7JaB7SxpD+FKkx6cXAfpaem3yGgO/UzF0atBr52nvwlRMfpnB
	 HxFbEzH+uA6mCs3P7jA/9PchmUOeMeUT7AZ+h+/uFiQSrL6YhP1UytFeo/kdr3SI0J
	 3Dj7/ZkL0WHOLq1+UcUVt+a9TPrfwuoqQHlWMi82k26mzZ9Ui9F3THH34qBKtA1XIU
	 JsSSRljSIV4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6224AC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170121589639.5034.7986661127890065816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d6a420b9c30a891027fcf25d7fe9012768a351a08c23c27ecaef14881963f5
Date: Tue, 28 Nov 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701215896
