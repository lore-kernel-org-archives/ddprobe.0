Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59D1C2F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B54C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682188265;
	bh=/PekFV09bx6WxgOvb2VHHagurG8CYJuE3wxaab645NU=;
	h=To:Subject:From:Date:From;
	b=YO/PfaPKd9CE2HgAZrnQEmWwVj//iidPhAeK2aIDUamsXyd6vawZWI7tcdjHQPmHQ
	 OIEaSypxofYig2frV+faICp1vHresxUP4TAIDJmHzNzale5q0NzB//O7nfswmTT9OT
	 wKXwajSSQgVcBmfrwFHG36arBfzkxYoyiui7GPS0tubYYrSagh5d3TKEzW9050sk96
	 IYzlSk2f7352+q5Ro3z7Q5K0OCctoKD73FgAxfTwQ73CwXgjzLFSffSUnUr2Wc+yrR
	 anqo3dVfeM86dRlsdyQ94WtshofRqJV0J9vRygn1DgjV3w61PcOjkCAjJ16j/0PS9e
	 iXwAFqNEuEEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CF1C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168218826579.24674.5906390151684640480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f13b6b3d5e2d4a36244eec8ffa463dbe2c5cb2d6393ef039ec7683d12c039f
Date: Sat, 22 Apr 2023 18:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682188265
