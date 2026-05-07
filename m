Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3817A37BE60
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778162854; cv=none; b=uTTq+Y7xGimPL0QoCN0AkPP3bdSUjrn+92I5gMfH2vm95mwTNpgJFa2fniSjOI7nRrGt9TYTWBJScZdQlORgCybjgLb8sviyGhwA2310mue9tXMrR2mlD1f2hIxnSLAXAgmZWWtBFC34vTWfykDVxypqT9dIgoqOFYapTxxWkIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778162854; c=relaxed/simple;
	bh=sFic48Zp52HpmbIxO7lgiU0cj7oQGugNMg3UIwEsV4U=;
	h=To:Subject:From:Message-Id:Date; b=XRzp1iZNBwhsZV8yyNZLQhJoudCPO/uEpwKMJOyw0OU6oD20uV7Mpzw4bkAwHyeoAV4OMDqroHl9NVijGXqDvBeAHPe0Rp+wCRPEyx9+8gRFh9ExuDcEJVVBKfW/bQOg+m0MjNbuovq8moUMq2gLIOneXJO6Lx7UCIcW7jI3szA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv97vess; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv97vess"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6E3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778162853;
	bh=sFic48Zp52HpmbIxO7lgiU0cj7oQGugNMg3UIwEsV4U=;
	h=To:Subject:From:Date:From;
	b=Iv97vess7KNTeXj7amlyFZD5uQ3n+OssQmLT2B2lXLKUz+JXfPb1BcvnbBY9k0XBu
	 A8QcTyMcsPv+iEu7xM+pUveOrVBqcLJ21xLWTPdXybnvEtl/PEPUbBuuGozDm/9E5Y
	 SzRQNSL3XjV1dV8u5YB8fD7QNV6GDHDPWOxDgT618e57kaJLK/tJbh0BfHCIldg+VG
	 a3Sqf+BNrtz/SaNKqMa3JSilRuP/1xoijWzfeIJar7EYdau1JQZ/iylNYm8WpV4k7n
	 PVIgTT6DJTB4rvPC4gg2358vHXMPSGZskzhTHL7iab7uXTtqCX37dQ3qJtjhfgrl2B
	 9v7KD3GjGh2Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD254CD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816285369.13977.12802464440718969898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4880b98d38a6787a12dbad019f94ff8674575773ad0292c051e18f28358623
Date: Thu, 07 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778162853
