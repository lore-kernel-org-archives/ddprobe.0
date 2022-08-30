Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4CE6100
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73908C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661893853;
	bh=SLNe0Dax4xwIGZMw1de4XnUIu75dIDm9UMTVu02yv3A=;
	h=To:Subject:From:Date:From;
	b=Rv3DfvZTFOvNa0vSeci54RfbVJeQ9ZPz9XO/3bFc7+WoMgCZmOVp4Y+kYD9jpkHcY
	 BGc4cAZAiNSixeAX5AyiNLnSKo4jHJr1j66MONyna5iPwD2Y0FmpkbzN6+4JByOE/6
	 1oZzf4WHhtxomTuNsljtmP26jidUspJ0woX+BLDMjDALBSUwn8ko0AjJamS/TLRS5/
	 RXxdbMx30pSQCNYfGJllMm8+FS5ExNDeELki5ZiJkmKYySPQIH1yHC9MKPoC143UCK
	 DV2B8fHDJtV89Mxay8Jq96YvXmvaZTDiaW3ofCZaMtGNisQfaMDak9Grp7pwdkd6dz
	 Q2QqZjYySxJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0FDECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189385335.10985.6795347382167633081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c998e3cca26670deb8b7f895ca90f60a5359488c9698d2e11344054428ad89
Date: Tue, 30 Aug 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661893853
