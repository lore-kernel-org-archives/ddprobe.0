Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC7FA34
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APWql9ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AD4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696934828;
	bh=wYwJu9BAg9vi9LetTmiR3l4usDLKLc9amBtYMF0LGqg=;
	h=To:Subject:From:Date:From;
	b=APWql9ZYpChOd4neQmjkcrHBWAfUrhVcl88QD6SMhRl6AKuXpHEYsIy6RI5dlEflU
	 01TJGem+f5XYid1JunhmpVe5W5sNN7bdOg6DoLzj2YI8JG73JwwUmDqLC82yq/4XMz
	 yoyi42TQ7sAQuPRsJKYhn3lhYHTSzP1UcPXhpui/qtnL8BNqxlfbvUE1DyT+WQ9Y34
	 KoPuZC0fUlybmCZHMm8Vqk7eyZrUqkcB6dhnyiN2ceqFQ6zkr9w4kZprJ/rn2nHTtD
	 OkM8U2b4I4aFyX2LGqOblUCFFpgH7X0mg9xeQx+CrKU5we3E9E92NsHEuQ0LW36/RQ
	 pNlmd1cXqoRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE902CD80A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693482869.21040.11582766473380286643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24496c69803889232d8bc6313b83854c4ecc3110466f1c7b918930f979bb23b1
Date: Tue, 10 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696934828
