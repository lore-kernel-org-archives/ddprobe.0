Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB3F1863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9097DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673038287;
	bh=gYw0F+M7RqC4BM0f9zIxwQVPr36/f8FrhpngxzxSIv4=;
	h=To:Subject:From:Date:From;
	b=r4r509IignIEc0xQ1jqIN3F2MW4VeznMaPkzqdt/njmP0pDXQ8WOB7mHTMX4lxg9n
	 fPJpUxzkhL6s7xvVG1cCrAHuNocrNMRXRsonJx+sj3Gh8rcuKsaXtfksXs6DdU27zT
	 VUhuSVu9/0OATPC6tLSpNgH8PfxfVL1j3/X9uyMfv2Z75kzSPkaO9p0YYr2NMDG7LS
	 HNxPThFBuWvLvvvXMveGr9+TektvL8wFsnlJCquB2bNRbl+INJDjAFH9iOcACN6g1J
	 wM2sxieOR8ht/KNhVLM7hQcI1qL1OZkwqnZs6KNgIsu9XgAaiCAfmuN/d8YQXCFjRB
	 LJAvn3QXEdSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B920C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303828743.26793.14246788930832121008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1de709af9d3ba78c049157893fb6711c945fc9b97cd14c1c9cfeb6fa20d4306
Date: Fri, 06 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673038287
