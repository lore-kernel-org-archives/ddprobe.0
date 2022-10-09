Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87241111
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E58DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665297653;
	bh=yeJdkVaRYSjpowobT/07UMeJxxtycMzbZ6m19uhV6eo=;
	h=To:Subject:From:Date:From;
	b=IpP+U9u7Od+hPZcGvOW69J1aetqPn15gRkWomCjixuA9eOf2Kg5U6jnocf1vSihkn
	 9YY+i/BCq9MCozxduehTNC7M7KvSEndVSxDP6xQdBTrjTU3WKkS4zejhCA/BqQVNwN
	 ejV4sp4RHUVzCRwIdN1bJB7aMxk1umWgyn7o4HjZ+yxE1rZ00ejM6puoi+mcOP2oFQ
	 00Vsw2qY+2YqqCDlVYNXNl7+qvZV6q05uIsllqbnb3CDFh6hzPNACEZo+FHt1cD4ne
	 bm6dHgmHj+7mPxMaCnPoTY0ThybUPQ/0NylPMOsRwKUzRApuuMtCbic+ZzethA/Wtr
	 rX6ZxzYGTxoZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54648C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529765333.22980.5558090248796937828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531e4524b660a1c4ae0937dda6079ca3c30d16e08b5ab65545c47d9754190ff5
Date: Sun, 09 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665297653
