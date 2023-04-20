Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7561362
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E5EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681958105;
	bh=wqpKvB9Rq26Xr9fP936G8kRVCuBodbCcdX5vFUiyv0g=;
	h=To:Subject:From:Date:From;
	b=k2iABovFf1Ckn7GxxPrZ4/WI++7BXaGEYRQeuLvnXJHtHQ/FUddDfC1JDlQZUeVZp
	 ph13yyoxFI4YjC4o+RmlkvMkaV/pvpd8ePUTk2AiJ3AZcbP4PRQDxXXpFU7BLNcHB0
	 gzRtazO7pXBHh8Fl77aXp+pgIEgEJUjUjykNDpMgrP6cXX0dQ1N6Bq83GuG82myj+Y
	 G6MFb5wMWZVoHI5iwc0afQxEwqN8uxvnxNVR077yv/rIKfUpcZtOGjDDfPV4el+eCF
	 IKU/HcyQbQ9Fx6NW/eUnxtK+DrI4Jywki4lIbC12OXl/qBc1KKQPcS55LmqlrLz0PB
	 6tlV94rC0ALuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84B4C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195810581.10947.16787674669619251488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd889d0208d5f2da799af50def60d7708257b26580335e0384bfedabf2194ead
Date: Thu, 20 Apr 2023 02:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681958105
