Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208DF4418
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8bbBuOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CF8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704023296;
	bh=jpOyYToqcKMDHDqaxY3jREy+8VhOzCHgkSmUiZ9jA04=;
	h=To:Subject:From:Date:From;
	b=i8bbBuOibxhBlhafCa8RYCKgO2JeRrJ6BKdc18c74YpWlaSWTMwU21gDPLttucRA9
	 bu7KBDRzi8/WyXBJPwQEcTeepj3bqHMCnZKPJkIybw5ZZ3se6NE9QQ1od8zQC59VWB
	 akKWg2D8nA7GxpMBF+O6VV1vaV1AoFUdBnoEw1CTP8gaEdNZLzrt8w1hEnj9X1mosk
	 uJNidJYzy6xJs8MqwvEMJ3SqLkrMIzevKDeqMsFjQ3EfphnMJvcT6iXHcnimCFbzBo
	 U1mQXKzKctILNMt37wc5zYuyeky4Jj+HPbj29rixmSG/DfcZSlJ7hBfNs9gpUF0zBL
	 9viqvT4+NYQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF06C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170402329640.32489.8904111641107333482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e81d12d49b036b4318f782b10b5b739414acedf352ddaee6bd5353dcaf45f6
Date: Sun, 31 Dec 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704023296
