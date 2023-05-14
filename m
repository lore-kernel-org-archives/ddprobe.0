Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8581877
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73C2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 19:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684092545;
	bh=OFSqk5RDs0O5GiOgFOYgB7NQejQ/NDdK6mxxVURmWcI=;
	h=To:Subject:From:Date:From;
	b=q1qREjxldRQYwYOVQnFtJ+8i2K3lz885WEFP1cJ3VwMps+stBnjjd/E8dVrlw6W4p
	 QkVDNB1a2NJszwISW0aZGirFgfLtmQZLssKPzXkjzHW6A6D8Ush+lPCzFZXSD9suJB
	 ekOrcntF/bo1eCoHrrG1xaMaZzpwUBy0Yy4s92ECm3+ylPWLmO6iAnUue4fs+4QGpz
	 A5ZC3mMn+fzpUqwxZWxzBYD3WvC+FaDips8UeuRGWHL97G/jmM4UAGwKd8McJnIkOC
	 6yDvCCi6bS5oGoZ1GKNkpJ7hvMybgL8K5Eny2hVAE8L9wjz1AB5PZsC8vE7SsEjqiw
	 fAOrBa2kzck+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15FEC77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 19:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168409254576.15533.5794764606582693640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec7e2d6abd268cde7f6495af33e1bf5683af91a8f526aee89bcb4d9a26a7f5f
Date: Sun, 14 May 2023 19:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684092545
