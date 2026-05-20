Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4C23392A
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779253234; cv=none; b=E48j3/WxLFg0a59woVtx7jXXnGEwoNN9vW5513qPZGw0R1L9n9uW6e12c8JufhX4Us3v0JmM7A1GlOZhg+UIeQDuHlenKhGHM6DBMXL/+vao1/GeJgTDcDFUPry2WOvk5pL5jAHCGB+8Gf8xPP0LhV5ohm/BooaPo5i04FMrLRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779253234; c=relaxed/simple;
	bh=TqYcmCWqf52D7f1KMS4MMvqKZxyCgUWKF2+FtUgnBPw=;
	h=To:Subject:From:Message-Id:Date; b=XIBL4m3LMVjUB7PE3NsmbY5Z6lAqTW5IMoqClOaKaTTpVm1U6lVBSj8m8SH6+0CgjevlHpDvsr6sD/QeFJw+KzR+zbOIxy+ROqMmlSv+Dnq2MuBL2WEtzY4dEzn3JXWhGeioySNJcIHJZ0MV9RG01CpCssdmqCk3NHpW1k31358=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbZKRdq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbZKRdq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A20C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779253233;
	bh=TqYcmCWqf52D7f1KMS4MMvqKZxyCgUWKF2+FtUgnBPw=;
	h=To:Subject:From:Date:From;
	b=JbZKRdq3sj8BDlo6N0z8xPu73UN+3Mil7JkBhNl6uwa2qsIzuZMy+vLMRrzdnkv6k
	 6UdJNCM8riL8SkabDO1fB8zg3rlMuNEtujJPzfAMnUFEZKoQG4Ol9bVq9ykMJux5Cg
	 nHKO2pCkHT3OGWbKqHZYcZjsXIbuHuELgHFxU9xTb2By/Q9PR7jy95XGRItV6teZKI
	 32NvKFmCdYMRFHdHABUEIJnmkddvh37qOEzt9KKUYae15xwdHvL8gW7plDCFIy6b5D
	 O335+Ptqh0A2fils4/gb7LSxlFVq/+UWKuYuKyBcJ8u7BT0UI4/3Z/Ft8te6584clw
	 siQ7DiEz3f7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF0FCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925323369.14057.6461598825240818498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb12b33398f51e5bc520556c66634e8c9da65456647754797bd14234db59bfb6
Date: Wed, 20 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779253233
