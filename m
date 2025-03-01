Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C678339A8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740862734; cv=none; b=JY7//xA37Y2Ws3kL8dQVUluBtMUXKRlUgjckbG+K18ZZAswmO5qGxF5abyhOsU0BbqtZT9FLYTmrQuaQVU9icXMFRN0m9+cedRg6aujHvNQFO7VlcA4tvTKj/003Fy2shDtOw/ncbE60ERgUjRmzUOxHWWBkBOQvjZXXSB/5IBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740862734; c=relaxed/simple;
	bh=uxJVzWb1p+bCD1gRtQ6APuvon5M/Q9ACoaPQ70/wasI=;
	h=To:Subject:From:Message-Id:Date; b=KdV4XExsRAFHh0FuvZ0JstEQLBJfk6YzfLDWFAV/P7xCeNIFHO3E1DqixfOYh2VCSOQFbrmyluyxVRHuU3Tl9pI63YSsKiUOzw26cWgK6qso0xmzxMp/3LW0SyT6+VtTNjSzQKGvps7aNMkN82VHSg9lmAHbzkWxnjmRR5rOOOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+uafejF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+uafejF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4800C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740862733;
	bh=uxJVzWb1p+bCD1gRtQ6APuvon5M/Q9ACoaPQ70/wasI=;
	h=To:Subject:From:Date:From;
	b=o+uafejFcPMe6biwDEG7iuSGD1GRxQ14H1rP9UG4NRXKt1O3muoTCgaerRLX7KLQF
	 0duj1hdScJzfLXPEHf4MsgD1g8fPxNz5dkl1i4bTVD9ZO3ezrSHzaq+2SoTNKH2/jc
	 nD5gtBS6H3xD6Wxznq49eoysxNEX1u0TqDcyXl7bJOAKU47+IBGgIrj7IslRgWUiYf
	 bEkewBLTtpraAq/XC3ij0P3vi6dok2HeApop2CDLuJZGm59G9Ld4lIkxEZyHAZNYZ7
	 9LFe9Jvz4ZJcQ27LA8gMVgAthY8ajTDwU3p+jH0LvRZx0EVDpIgA4TfCEgmRgvV7Qd
	 Sl/vee4BxI0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA3CC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086273362.22839.4498046630142865183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2af60956171d701074daa7652602023d9ac6fbe814f4470815f5ad49ef5784
Date: Sat, 01 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740862733
