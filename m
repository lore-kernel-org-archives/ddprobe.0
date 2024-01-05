Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0FE2DF66
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bf7ETNHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F043C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704465496;
	bh=HffL9YeE/WFo+fFWk9zAiQMfCTxW9+jeyavyN4OXOFM=;
	h=To:Subject:From:Date:From;
	b=bf7ETNHUC4lGyj1zPj1Ph0DNojlTqbV0/+rUwEW8tQ2gYrvLi8uE4vQdADADoZWv/
	 9xezXzSaV/ImdQZloYXeRsZYzkoFvyUJz5wocAoXOY3ESnPD/rZ+XR4rpyQ9SGfBpk
	 Dl1IdkAwKuvjuEm5nJwUHZAyB757sIXLigttWU6Y185+HZDfxZz2vatSiTCHuat7Qx
	 52ufa9OUmfwC35hDUP+7WFIWNJgyNAe6VjogZaMLjIC2m/Z7celusKJOce+8NKmUvb
	 odom5rI2fj5BKhEUhUBdDNemLsKLE983hCVRZI6Gr+1lljBFoNr2i/FD5OpBlz1ZNQ
	 qbYzCtoNr69yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7E1C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170446549641.19662.17292155555203601880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd153d5230460a15fd4421f2fe514075a995de08ef8c3e4a74ea49af39fcff19
Date: Fri, 05 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704465496
