Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF44A29CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD84C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671720087;
	bh=9BVoYuKeDFv/0DwucY2dBmNR2U620mQnVp2g5xgEa98=;
	h=To:Subject:From:Date:From;
	b=jh+YV/iQXzezRHincLGiC5cMIuEHXdt2d2HfEZxLPWR1xXycwteNVySyb5iqje25c
	 ZCcX7RAw73GWQurJfcmSAQ2dRFxja0C5meqoduz4NeOxXmuCy4sA2+dgcMT0j6Nr7g
	 gU7/emZMtvLjqeHfElLOqS3QRyL8fUIFJGaf+4xg1HuzSmWfAtAN/xLBA+Sb8n333P
	 X9op7OLZXN22DBkSQfJ/ucNfbNQQO8HCBIbE7BRaV657ubvJ7h+vKYki6OKQ65tPnf
	 e5nnNIlsiR88/3iNCglBz0kDwAcqeE8RMuFCT1IcW+Arr05uNcPNkdQHEtcb//ApvM
	 FXBL9wedwE8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6658BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172008740.30406.14133611143847065009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83b527df16bc93995477878925330a9a1dd18e06737d6e0e615a3eedba747c2
Date: Thu, 22 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671720087
