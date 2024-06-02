Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4677B3FD
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717367123; cv=none; b=YmTH2s5XWw5YWBqCu3pCs4jaGDz06SEmiLZG9F52l7lHIgHDel5K/Q6gffExkkDSrcdl2JKGnwhrfcpeFFUwE+Cl0ZMQHANqABt5G6SoYr7mv4vOqjCTWDg/4JDBGZQnaW/3FY/WBbKWfgHDoCagPDBsiVDa4UQ5MmoMxMlJDRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717367123; c=relaxed/simple;
	bh=1b/pKLm7E4Dm3pDVVjc/kRdion8XNQ8q3jO+UJDywss=;
	h=To:Subject:From:Message-Id:Date; b=Se4l/AaZAJ3KE6M/1KiBYRGpRhJ7b5IJ52gdYyCIXv3gZe+lNAzs7M4UR7Z+VWZXD8vREskj4r8oAJaYyYWDYwyBpzMsGGMz8NstinvJcuiKlzARA+UJFFwYIa5UDXoeiM/5BA+dTCApLSvpPF9G+VF0uFCiR5lPtU9csYRW+pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7Q0tMLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7Q0tMLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FF0C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717367122;
	bh=1b/pKLm7E4Dm3pDVVjc/kRdion8XNQ8q3jO+UJDywss=;
	h=To:Subject:From:Date:From;
	b=e7Q0tMLOQuHTkYFvW+IYPoZhzpFTXNyejDeEE8EYCC3biM366NhIzu3/6/y0cfNpm
	 vxdW/e4nU3qw3y3ljpX8dBnAb4hNmUQrAn33suteFUwgcg4Zh0bbvAf8hnKE1lA+Jy
	 zfMCy49xueersDP8L7XYgJDCgD5XvKOcJrEUDGE9YXhswOzWPj0QW4dH4ljrvUs5tX
	 cnKomrMxi4m9n5CUSuHcEysZBnB3hjsCGoBHZcQS01JFJdMARU4+2Xjtd4SQ82ucaY
	 PA+YZPvH/KXSTzE5TpLUZQ4XByPyvulrt15xmgKt21G5iFdbPm8l1EfRBRQN1JFdx4
	 XYVA9KBu3GjzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C557EC27C44
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736712277.11315.11847056010589176872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193fddc896d0977bb15540433592a7548481651020b4c6a2352c2eeb83a969d4
Date: Sun, 02 Jun 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717367122
