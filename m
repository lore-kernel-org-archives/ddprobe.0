Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCD31F99D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784652514; cv=none; b=npG7pljARj5xZS2aUaNeu3HivXu4vXlKQbNsugOsvJdFmV/HN2EsZEALSXwitPs8rO7ZkWt35/yvty7DhoVIb54uKAck1HgSSGNZNddN9bqCi621U2zcQFkj1re9/o3QFACpgQqhF7hVLGW9++c4IEiQIm7dPig7UyuSEZ7zqLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784652514; c=relaxed/simple;
	bh=uSPidffAAQyiN9CBtdVdPg4WMiwhVCGsAB3F5E+qLxU=;
	h=To:Subject:From:Message-Id:Date; b=mpziKBNPwLYpnlTVbb6mnWhWDRx1lb636qnDcWyh93QkcLRnl/HEkMuAuFiZAszchfqd7aJqx08q9/NYsbEOw5kzyvqyCi22xBkQV7FNzb/1u+XgMmAdAAOTWJmbLqYlxAtNF7YA91/HxPm2YWpItV68mLypVFNMSEGG4CWr3tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOwcErf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOwcErf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F88C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784652513;
	bh=uSPidffAAQyiN9CBtdVdPg4WMiwhVCGsAB3F5E+qLxU=;
	h=To:Subject:From:Date:From;
	b=DOwcErf5+Bey5XbyGzbf2tp2C+0RE3AjDlDez8EVlqBJ5PMThPmyPzxkylPg7+vA7
	 le9tm+GcyMEG77FRbi3kRrKEzVMebaBic46vh+tIpV6/+hfKpvDnAhJUrfVIMj5hHs
	 RJpvNaQBp8k2ZZhvkH2uPwEb4lo+cdmm8vM0k1R+INX+nWBwwhsnad3O2BTlBSOJBn
	 9RfzQYFeXVkWtJILVm7hZDPfMxXiYQWHw+6sWDcnDH2v2pH7cgeZPO3hmc9nCSa9TZ
	 nQ7sAi+p5lISqh5N035wI/Qgq7fl/e3PMxk4oQugW+7xco8A+7DnEgKDD1cVPfqy+1
	 4d8CikM9u5SKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC425C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465251369.12190.9230146351089483884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7faf0ee749565c97ceaeb8faa7f680a3fdf7f2046340fdeab881047f4af4a6b
Date: Tue, 21 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784652513
