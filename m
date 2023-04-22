Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A087F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8CBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682139605;
	bh=30mgPff4aTLEovpG4h5+D+I/ne1RvlGHI+1mE9zhNfE=;
	h=To:Subject:From:Date:From;
	b=UFjI8Y6VRdmhlASBNlNDepH1PGHao9rK13afLOWATBZoHSAYMuG4QGrO5++UpFrD1
	 WuSGSxRPxHi/MsbxhNDGpEuPLAyFhNjCQrnjSuwvCHqZcXzgyJ1nE69gKdZSIMqmZ0
	 IdmqU9fITgHdNbgmAZtQrikFFY7PSwZHgT9cmbriihjJFrU4PVVc+PmBtIQuTSVZ8B
	 UYafDpwcqIcommxRKU+KCepnFVUhNAFE3vfOl/PttvlFCRASxwOlSRS9Zm0yslk/uW
	 YhRWQWuYYoNvVYiMnnBmdGeD53hS9G2zGvxU/F0do2G9BIIExiSnq9UsukMlwH87F9
	 BERtPKtjL5OGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0B5C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 05:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168213960576.7607.17382165047176308024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8b5583e6436e940921ed76d21522342a5ea2cf6f084e4b9a9be4b4524ed5df
Date: Sat, 22 Apr 2023 05:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682139605
