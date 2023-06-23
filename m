Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7EF443C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B80C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687563788;
	bh=y8RQLwkSqqsCecoYj7b83Ygkur4BHcNy1PCEWQZxxtU=;
	h=To:Subject:From:Date:From;
	b=V1dY8cJYFwrbTz1qxJe2n4aji1l4T7JIbCjvVTSpSFsE5ZkZ6d/lw+yriBaSoK33G
	 qSQAa7xMCDQ8BcyHqu3P+zpKyP+lQvfB5KN0ekcRBuZ7QKozLuBqYfSw3V7VqvXJP0
	 AX3RVDITXJJfKcXdpfP6ScoQmCyGAixrrmk41mtZHdptgdwxMst5QAGMmFx9W/z7Ja
	 OV2gOE7SIQCHSCDv74sRMiWP+QCPSAf6EUdbl2F2japiXpVWcwjT9MWI/4nf7exPGe
	 vDbQXqufg4ynEuc30Tcs7vvNV6n5xvEuoXHKw+FuQlcEdVFanQeFjFfOScyQAlkG+y
	 Pvyyr4K9FroIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BDFEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756378867.21227.16815603880664003666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b41161aed4eeffd5a3c0ab4566dc51cc6e198e813cf05205ce7522f458a512
Date: Fri, 23 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687563788
