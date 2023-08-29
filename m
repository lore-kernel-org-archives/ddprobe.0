Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFA2EC0
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE566C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693281848;
	bh=27FHDLRdRLIBdFfBlo7LhCimPcCU7Ij9OO1o6BDgBQ8=;
	h=To:Subject:From:Date:From;
	b=ku2OmFSjmsoYayJ8gqXe/AtiWMxAMthGWJTFwraYEvxF9yXT43cUhTTDkZbD0gm4t
	 gyrkcTQ2gXW7h5QASpdxcMOmdqYYBPCCaXAF1KQnB0yB+F8LUvKWTRPjjtL26yDvI+
	 /sa1+pxYbzdUmaGA8Wg0HMPJvS5nhF0MfHtjHNmJ+Vwhi85tipxBhV1+sCvhiC+lx+
	 oZS0chmWZqc2lvwBjG4GNZMJfuG9mz0Cl608EO+ZSsz/4WXCr3FMyfH4iRJ1jvOS7k
	 uoVXTRdtqPd8zXj+wsGO8T6E9/HBmIklMtAjlTGuUjAmdZa8dE/W3v3H9n/0FpxqhV
	 7bR0RkVWO9X4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE96C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169328184868.9468.16282846106620074567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e383e49bad8be5628ff86625add81b1df9b806f330c7bebc3c1b085aaeb040
Date: Tue, 29 Aug 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693281848
