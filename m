Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C9627CCFC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741305534; cv=none; b=KJ9bMNsCETmEddgQOd+X0Zub+cxJ5aJ5GK++I+I3UlGAyrW6qre5swdUtdQXJF/mAzAk7Wh3vXw2eJMyhOtBk3DRsCI/T7r8lxQVsm9byW8MHOuPGdk9GwUGCUxxpzG/Im4NxVFNHDfs3/4MYs4xAUOEdW7keuRVOokCu8c4HUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741305534; c=relaxed/simple;
	bh=0qKojc/zS+Wbf/68Zii3QrmAXSbzKKhE8UpzLQPSOtk=;
	h=To:Subject:From:Message-Id:Date; b=tyrGtTU0r3PH089n2DKq0iTVEZ4sKbkWyE5tZhuwuiFO2AJT8ZNUD8EeyMKLCoA8d1/n2jsskyHu7wA9Hk7IQandHTC4caao9XJ2UhSomOjrj+6QLncakR8ICBNA3zU/EGaInrzbJTbvfy0Sdhb9EFZKoN9TZYynZ28wxC7DG0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUGSUZEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUGSUZEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD26DC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741305533;
	bh=0qKojc/zS+Wbf/68Zii3QrmAXSbzKKhE8UpzLQPSOtk=;
	h=To:Subject:From:Date:From;
	b=DUGSUZENCqqlVENHAjAZzl0WfFTztNZhx1hSQM2DpPS5B8Lznh1ibCp0k93GTFl0v
	 axfHoaJdEsHhi/JS3aWmKR3KZZkbZvzHHENU8GERh4SH7DVmhrCCcUvVINv9GE8Myl
	 prLklkDzD9he4ZuPYaKlCnagczirDbBkSx3bpFgt5bB/yf+nvFUhsWD1kZ2012CavF
	 Rv2ILMxf3HKoadl4Li3Y9n0jBjMgbzAqvp4UFpr1sMGkEVrJw8qGLvJHCa9k4GJ0IW
	 aELsyayeyz/JHtfJJgXK3qR8aWQJ2t9uV9zCLgsEvJZ3gCGxWxVYTAEVSofAXwm7wy
	 taKkVCmrjIiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B045C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130553362.24975.2222770270782828554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7496680411458870c647a775070fc67159ade3af4e08a0722addf5284a5fcded
Date: Thu, 06 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741305533
