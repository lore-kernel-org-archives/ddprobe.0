Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4747EE
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 06:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1EEBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 06:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682230265;
	bh=S1l9YDA31bezt5FxsyfnHF9MsZxLNvfIeAvZ3mp4Lsk=;
	h=To:Subject:From:Date:From;
	b=SSd+PtJzHy4vJuoQjCxjEGtl3dTRXQdq+8TyczIUh+MRNTCiCrZuHWJzugIe/X244
	 +dg3glFj9kOt11TlHP7W61T1uf80/oBYaQfiMyLVpoUXTszBdGt8HFI1gq8dODgwNL
	 +KaETATguh5Inv/UxwWnf4RSxCrBPCET3+49td7b9w0Y407rOGGOSaQteHzcZwBFRc
	 ihs0QAGGemdkSZZBb1QDW+mn4Woz33SY747KdFboCgxs7c0c3SKip08R9j9vE/vw/g
	 pTimDctddBD2IgN71ln7EVsjKYNuxVOMjjEvEGw+8OeWL97ElN1DbcCWxcaxgLIlM9
	 q4nRwQURMrNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C972EC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 06:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168223026581.6088.12483360051340653176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d9bf35a0cb93ddc913a1cd20fee1f53a81965260ee5d8d5002fb812bb096e7
Date: Sun, 23 Apr 2023 06:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682230265
