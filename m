Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E9E7E6
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711162697; cv=none; b=anzPvRhZXL8FqIhzmOwOjwEshaHlxJYwCA0sY+Pn1H8ErqWp1lQMMAowYwN3xf68IOJjYLqA6Oj3e0ony+k7VvqVePTXGMOw+6gDiJkHz3KZnbKy2uMrwi7lolR9DUSkTItDJn7OUKYdgrqbO8YrrhbNuOdT9SaRPBoXtEGBJe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711162697; c=relaxed/simple;
	bh=tZpP9E3QjVh7mPd4y+zTL4bu3jVACuZzbwkweNa+EB4=;
	h=To:Subject:From:Message-Id:Date; b=Q5YWav1tYTM19rlqsccNmtha5Z6NiI6akf5Tfrs5GqgH7YIVhjEjRvSGqaIeTSQaP9O7R7vU4YxtQ8H/yXt+riiSdcS3An24omWcITga9bWXdgGFHuHotgdpgGCNSvt65zAk3EE4qCmS8E/kjnWOMay2ix9xKvaIyC1U1oM5+Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBAiLcHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBAiLcHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79091C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711162696;
	bh=tZpP9E3QjVh7mPd4y+zTL4bu3jVACuZzbwkweNa+EB4=;
	h=To:Subject:From:Date:From;
	b=ZBAiLcHIoHgEBoUZFSkuyhr/amv3+L/w+wzx/EgwyuaRS2M9eX7uNCps4mXinI3V0
	 vKh+k63Vqt7usghJtosGv260pLav7qJlH7MhDxiAPNKV5YCI2g+pqPH/5aC2x8C5Iv
	 vbGC9vZjnSe/RwC1ziYYTx3Ak4tVZChVMwW0TyFhvfABkHeE2Jggy/ktt0xsrwlr4R
	 7YCAfLVvBJ8D3e+Y5hd7y1//ijW6c96n08QJ/K5uHVT/qPEQ5bRos8yJucE0kn5qxw
	 4H34NQGRemCK+6UmwEqdl4cD1582+8O6Xe1HDqc6N5b/FIoCfy+BKQRdWHTZEJDUcb
	 18jIbtAeih2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66022C54E64
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171116269640.12031.6085261059309979436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc647b4a7d1bc0402a9f533b08bb3906ec2a102f2d732e4194c0dea33af23a7b
Date: Sat, 23 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711162696
