Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDA04B5CB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPdBTWxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FCD5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704988696;
	bh=IYWZdSxIVTlVyG64iKEUNHa/WJm/PXfAd/UbSuynAP4=;
	h=To:Subject:From:Date:From;
	b=GPdBTWxjUElR9DVOkVLoO+rB0l7kpsnYSuXgtMXae5DtuwMlQcvbq9WQ3vH1g5/PM
	 5LaPq4NfRFC6aw2Qhw+vlS9f5ez9+f1n4ao7j1HlBUmrvph4OUA15fD3rd1ygQiU/4
	 MgX8lovf2I1XRInIV0RNkKpnSOJ/m5Yql1Lr167pTqFp5lrZa6hA7zFzmH2LjyCTTj
	 CTlCpQOIOefLWrnQm4+YKX9UmAPUcEmqPIHcmFpxzHWU4AA/E2j/NGh5/dxjmVKG2J
	 btKPR1Zej1Nj38LuUNafxXpKPcMRmgJQgJKwO3OeyU6NIJMEjeY1orrtzs9AEY4Hde
	 6/QHSo1KHccAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C97CC47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170498869642.6080.4070943843418635637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773939ae86ad7c85499a0d2e8f52b12c385284d58e940e00a708c9a3c6f8fe39
Date: Thu, 11 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704988696
