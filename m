Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237804412
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXuZ7DyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C62C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698379696;
	bh=9Wn6j4w82Nu3bvdPC4XRqJu3LvPBbd2UaYVkR49PQXg=;
	h=To:Subject:From:Date:From;
	b=lXuZ7DyQ6ZB1ztqF79DoYZQ5hCqvIcyO9sbuCNzAbgoYpdPfP7B9YN60axXBNvWO9
	 uIIkZLlV1DgcBSCeMD4bgHN5Erafv5IaViC7yHRZX6KlDl/PidKUbypIDcnsgP8pag
	 ClTtxhxXIfoXusoXd2pcSoux7vkGrabN+S6RUbH1oJfNFMzYClQu8uyCDwaaj8Rw/h
	 oel9Kasp0Zzv5zpZwme5cKGzjGwB+hUCL9a3b65b99u2dRfUiZBXuGeyo9f9oJfdQu
	 34dB9uKIzADe5ACdxai7FYBkE17Xm9ocQDzCLXzogzWlWNsVZYQmuAIwqH+UcTLE6a
	 BrqFHLnqJwhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D0AC25B48
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169837969641.22295.6333348186564088308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cfe11298772dcfe8769c9e3bd7b19e01ffffc38f4461588367c1fc5b6dba5b
Date: Fri, 27 Oct 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698379696
