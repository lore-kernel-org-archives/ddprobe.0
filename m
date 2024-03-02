Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DAA2C840
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709403497; cv=none; b=WMy1PdrN/eAIcjSnZoyDs4YgVLXIc7yXOW1XxouMj78tqWxbx6DyjhnO4sqTAKRVTh/RnZrqQGxfVMbB4iaHX+9Xo3sZO3SMVO/OhRIG85zbjDmqLMq9pRhNq4aQpS5OxlSzP7YFEQV0rIq9DB+R+CWRkTkly+xQ7Zp4P1rjcFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709403497; c=relaxed/simple;
	bh=cz2L+LsarX6ooaw/9qZTJeHcsqLKDhOT9ydQNP3xSsI=;
	h=To:Subject:From:Message-Id:Date; b=gICLSgGk8TYevJke/BfNXePnBx35iS8t87w68o4wzt+XvA7MhRSVAHwNRgSgm8R6KBGFoCYF0sUEkFxD73Hp/RuxODLQa572qkiwnj4EC9B5WzfZusT5UKQbMm3QG3ftF3zC9xfZVZRf21w70nczXbx5eg9fjDidvOQQrpCTek4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEjpuUKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEjpuUKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775FEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709403496;
	bh=cz2L+LsarX6ooaw/9qZTJeHcsqLKDhOT9ydQNP3xSsI=;
	h=To:Subject:From:Date:From;
	b=SEjpuUKRYCCPD6RnEHgsHof6WeYqVqIX3p0xXsqY2EM0fBKGM6T6jg07wsC77h7xB
	 IohjzVv8krHMyCjnzNOVuOUs8pUre2kvoaWmBMdAtjlPsGoFtHI5DqXvl3uFZwbvnp
	 2nAXxjYIYkdN2qGFOisCdVnhDyE3Lhek4ksEQStSDx2GZuDSP7OmSEF3fkAshKFfrk
	 h+WkFLpKde3OKSyeAVGKbMyxegB0mkrQQV3cHTdcPLzAmCBs+PaPBAHKOEZ7aR0Oyj
	 oxdpXPH9F+APKka5JV1LBuUESzWdl64VOqrMhNG/tHn+5LIyjYjZPRjt38ANsSC287
	 y9Q0ICidu4WXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6068EC54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170940349636.22387.6347766848854902823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d8dde7e7591e651438387ab1824d731559d1204c1064afca94343573578d72
Date: Sat, 02 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709403496
