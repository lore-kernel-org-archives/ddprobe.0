Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34F11860
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75771C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662118253;
	bh=OZGrLBMSJCJVT9OlKSmYX0c+qVhtVlM9f8oaKZumZL4=;
	h=To:Subject:From:Date:From;
	b=qN1LnWz6FqeyxOJtvFUOMYVLGZxZTA0J1sC55GziKtas2NywXcHJm2ACOB02VI2BY
	 75Yl7ERqGVm9JasNWEkhB0Sv0rCr2LYfzk91t1jxTxZ4uwMMwGjWUTeUlwgnj21RoM
	 GhB9wadHW7mVtsxUFKUcqiHhLH841eyy2X3gIn1aPSskGFpnoq2MI9Golx/luAcI7N
	 /Ht5nUmLp+t/vfKPfbG+ksGhYME/54dzloTM7npAIEwVxWfVp2Sxs/8v8U8WQLIeJq
	 AuOqPA/yVnyPHv8X/gxD/ZGPyUBhcMiBCHcoCtIzPWoZHQ/2w5Ott1YCjmgJALrL5r
	 WjQ+Te8Kze1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F831ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211825338.21855.10007394417733413702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5649dd30c9e1eb93a272d47f79ae15235360accea65eab14ca2a2ca82afc94e3
Date: Fri, 02 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662118253
