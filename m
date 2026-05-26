Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403D73DD869
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779794554; cv=none; b=VCkflS6+kOYiK9ShHkkQhCgGDhHR4JI1+q/yxh21PrDCoj2+XhbMY8QV+PHixkzn+XS70SRm2hOLnQydsUSUWN5dwWMrC4eUNDgWYnrdDTMgW5F+C2pp6KpkpOGH+k4Zj/mGxlVGH1nYGzLXeeKo5xoSWvjeEAakIP6hJFEsW9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779794554; c=relaxed/simple;
	bh=YbCBthCe6FHwm5QWpW79HIkbDlMzXuP9sR8+20spFeg=;
	h=To:Subject:From:Message-Id:Date; b=Qeh4iPkdPoAhycI4fV2yKpiKDS2WpJZPdqys19nt20YqVm/l0k5QwTgABhiUYlvnxiwiz0haeR/R1lC4mIpUBpw2FtR8YvFjrun7IkMLKL0dj5xBmG7Vz7+FvZyi6Wt6bXEzopSHxoHWRzdBGElqiZ/uyDowVgz/hf4YlhKAGKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1yYxmqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1yYxmqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B3FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779794553;
	bh=YbCBthCe6FHwm5QWpW79HIkbDlMzXuP9sR8+20spFeg=;
	h=To:Subject:From:Date:From;
	b=d1yYxmqb/+KFuTgqnX5FZMrynoLWzXGIhLoTh2IabDyht4k6RZxRxpkafIjHf6b49
	 8alT8XC0ZFChi/luBHAGFfJ49oojhTTs40hLjGH3WZp/g4l8eZfNd8YpfMU4lxfuin
	 ktkXvJPhsA7EnFmypdJs8NzImhaddvLzo/1akYauQ1dr1YPEW5bFSWkfj8/7vRlzTt
	 o1K1d2bGyTbyf8EzrewV2SDbusMbCV8bEvkrcLv9Url3XTanVt9RnCBImLF7pC2Enr
	 J3vTL52iUVb8A/6tmLeel6zHPtliH3FUrhqh3ffkZ2OmwyfnWJ6EMs2KUV7Yw8GNLP
	 hlSaEsui+6Ryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE955CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979455370.20769.14981809968345894978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0858c9652eb8f798d205da9a1ad32126bdf32b0f65f3ea4a12661ea3fe8cfd1
Date: Tue, 26 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779794553
