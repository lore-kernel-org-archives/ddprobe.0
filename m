Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90A1136665
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711715896; cv=none; b=ahHiuBj9Bng1nPv2EABpq1vVlKqLUABWmzU4i1/VgF1E7rXBFoV7bIvSGw8b6NLORpRE6dzH9ntrfOuJIiYEb2+Lf1I/yIbkd5OLXP8ufKeoKPNOvP3hY74BNhR4N6RrJA49Q9witC+f+stDOww4u5G/+LFQsk3+l4lAKJkVM+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711715896; c=relaxed/simple;
	bh=4ab06wyZQjg7ItY6VDRNC/EoBqcWMyYYsPdF4fu405s=;
	h=To:Subject:From:Message-Id:Date; b=A3eCioBiSxBZBXlh4aP1TKYboHQkNdbkQpjnn2oS+hEV1Ap88y0PuDTnFBOfYu3Go2eraU3GtndBlKv2eiociheZWwWMCKEt9ync93+uX3tN9iiAl8JNT/tLLhwblGxG5MTlI04r2QZY4fVvivZFds0hZ2m3kMkFh0c7032UQmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By7BMAXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By7BMAXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D6EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715896;
	bh=4ab06wyZQjg7ItY6VDRNC/EoBqcWMyYYsPdF4fu405s=;
	h=To:Subject:From:Date:From;
	b=By7BMAXY92FS4EUVBqwcYAn32ZkmL4l1gOGVK11hw1fKp7Xg79Iz7/+pDc+77IpJM
	 MOJ2npbibQ1YHdgkl/VuRqAhurc4k/Zi2Hd4iYF26E7jN/9DGkyQWg3cjG5SYnupPV
	 eoXx2E7YPmvVB0dpvfK2VcdKuPJlxH3t8sbBogab3ZVlbfv+DGaZG8y2Bz1ENaVlW4
	 x8itWVVanUhkdkVeFPSprJ7WgIkviqR8AJy/2tMIVp0yHFevyWZTEUkDW8q45MAU5z
	 xeq5CjbR2dUEO3Rfpyf0/xyXJAZcBYsrUdxeUERWUaMXv+cmH4ui17r4z4xdUoLZdc
	 iQuaaPEA3t3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716F5CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171171589644.15000.2515909822981756239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26253d552801356356b56d5956284523b2ba30d6deeff8f88bbe467bd5ab6a6a
Date: Fri, 29 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711715896
