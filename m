Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1034CF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741586934; cv=none; b=OVvi7faG7TnN34RKlD4vJix550pBl9NnM40rIb5VUz7uIdSMr5nEvJKkdnXZOD8o39Xk2ml2vvT8GEe6OCPLHgGxNf34SGCjfd2NAY2C+R6kpL5+kcrw5AxLm/rWU21/WMe4DNwLHDLGHXVc8q/FRRFDvw5zqQRpKuBJg2FRzz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741586934; c=relaxed/simple;
	bh=7I4fd5s5rcNiaMCaQUqVSxRuux5gUySHAbdpy4hphMA=;
	h=To:Subject:From:Message-Id:Date; b=aRwILeiZe9cop9BjoNQq/drrDFPzhzIApasLST6Lojkgv+hJ7h3yDQl/Py47PfiUzKkevjfR1tK/+Y5d4NRUIJ0eF/kTs7Xy1tvm3emdioSLzWU4aoUzk0ayvVayuxgbSi8ByNiE7FsHYCzSBBHfpeHgKC1pgCIUuKlDA2MNCUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUiJ7iO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUiJ7iO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741586933;
	bh=7I4fd5s5rcNiaMCaQUqVSxRuux5gUySHAbdpy4hphMA=;
	h=To:Subject:From:Date:From;
	b=fUiJ7iO2Q8IMcmWSDOWJE9MbV5LkInpAxldQKaKT3bOCa6jKJl5zagmYFox0YepBK
	 GQR2jFou3pZ6GNmPRcI5n/kLrMRMf6RnUoivGsbUh2HVA2gEwO0lcTCoR8vBK1Icxl
	 zmt5j5uweVhvT0jQ9f7ZjI78G+h/l2kz4LYKaMbqrZ12RLyIgKxv3C79rJgUGRxxv0
	 uI2dkyE6nEaVcV3Y1+ZRp2WSXcSY4qriKDJc5Nm/qBmSCwVzgpFmVe5YKv/TmD0ZuY
	 6vrlZsLVXKhcofjCrn/yMDVjm0V46oG9tEuZLsG0QMSV6tPwHMmY0kCIEeLGSUzsor
	 uGOxKoqurFmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93099C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174158693359.27043.7680429583426833475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f65fe215e3f75cd3f5cfe130844130f5cc091a410b6fc9de6025421d283576
Date: Mon, 10 Mar 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741586933
