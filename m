Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5599C15AE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 03:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D11C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 03:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687231328;
	bh=kBa7V/yrAag4azTAa/Ydt9WSgTTy5fWHgi+V+vNFFKw=;
	h=To:Subject:From:Date:From;
	b=Uwse7OC28ockKdfOy3CAioz6RJkUAdxk49wCNZbp3itnI8tFlUpBJigw08JqF+ovV
	 eOkznowUmiy2Ha4otEfzuC8pBJqS8WXbRuhmYDRY6cNmI4B9yt8a0blFfanhcok83l
	 l94IjRlMNdrLKCo7V0DWEoiI0XYSenGim1ubo+qK79iPH8x3uFIO/aZHxcYj/3ihbY
	 IpJBRiFa1yv8PSIYbwQXvTyh/Gjcx+Tnnl1EetBnpLbQw8cy1g5Qi5KMSAZBPxHk0y
	 SHIbtmnzDy5TGeMyd0tHDEo605JmWcv8LUZw3OcPbJ9SJd42aqmGZFCxq6xJDRwENZ
	 F79vJGvBImiCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CBAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 03:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723132870.6410.4356483041437876545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2c12d979c9542897816bc8302f69ef72e11646b71445a081fee9c21109675f
Date: Tue, 20 Jun 2023 03:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687231328
