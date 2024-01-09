Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F152EB1A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG5jWVJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D39AC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704792496;
	bh=uIb7P1lW8R8wzo0+2zsKfQiLKC8xZjTGJzjThkq50Bw=;
	h=To:Subject:From:Date:From;
	b=QG5jWVJ4YEsbFHUcbsck2k86byajlk7IvhW9D6ox/xudFxdK8i0v6i7baWcJmwxUN
	 gpqeTBxXQg1InOhUL7MasSd6Iv95kA0SZkD59b/iGyjmAZPjyU0jGYfLFZXPNPmcyn
	 HqHXTVrJxffMMI/qjQIvflOcfRhQddtcjbc04rvglbsbdf4z8252oKGEfQxtS912Ed
	 WOFeiz5z0txt9bbpiqjOOWnszfjY6RpWtKsWHYtYaJwSQfy7QwTfIvGXZisCgsAxvS
	 8jlKCpCXMN2/P3J0mV9rEKYIHzfE4LI3PfWl6iCyqEUDbatbh8duaQEmpqj24bIv9/
	 TzbIoAapYM02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662F8C47073
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170479249640.30412.13953313908440378850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bdf09c1892909b5159db7138a9624fb5e86a77d9068927ef5c7f70aff70509
Date: Tue, 09 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704792496
