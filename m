Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452FF808
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B67C433AF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675158785;
	bh=B7ELqc1BQHRzRHqStIEaOTwd9jBjW5gUB56WGTAnn3Q=;
	h=To:Subject:From:Date:From;
	b=OG6QfTESixM0mSebsJv1zh49Cl0kNTWRS9pnKLWXasnMygixruL3EBlpiOWAVBxVm
	 4+JVPGUC1sBvlN85edLLmf690YK8WkPa7Iwyia6jxcZzse8LNdMTyqwQ/MI2D+EIqE
	 VBr7gLVPZbTqZNWNEaEutpFp5eNvjvYd+SamwORZrc4YzenqfYUOhQzSzfgqpCX14I
	 XdNOiGkcXDL6xg6ebvXr9dZHMrVai2oQbTLE9I114AIQZTssO3ZpgIRkBto8GNy1dG
	 XdI/gwObGcInzOA1rlhyHFlDDWqJDLkfI0tQ5YQzCv8ntqy1Z1K1imQgOc5GvZgKC1
	 59vDiXYPtwnDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CFEC636D7
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167515878579.23077.4607978584569255069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39290db3bd8d0920b26b2445417d4aea0daa2be5d351fcf806b7b6e11539dfeb
Date: Tue, 31 Jan 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675158785
