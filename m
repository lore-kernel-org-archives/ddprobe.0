Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD17F10E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87908C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672222887;
	bh=lpDZObO08RNlGeXENThH+yL3/T0FI1HmUqU1cE5E/ek=;
	h=To:Subject:From:Date:From;
	b=mMFyRe71dXS3z18noIbrsJ6exO5weLwMKaeI4EZvImoCJ1KiGH5f1qpMNjH8mrxof
	 hqumpu+3iWhHC1jtEK2tkkMdO1Oi70buK9vGrZ8DnaftMoV28ONViGqc2gF8je2xvx
	 NgGMVvZ4+jt40VGbHw8C36vjLzLEb0PffGXMRVa7ZSSyUeq4c1wS6Yh+7Et98JQhFy
	 EZFAj8Uw6wsYWafmE1npPHXQNs1TlTkTYazILdhKRnzZMkC7/HPKwdo+uyJTvkxTse
	 Xdx4gFJkBeBLzh4/58IHOOLBeNtKQ6JSA8L2pnQmOKfj9wjD3oxxydT7sHh5gH0kvW
	 Y3YRQvemf87Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B83C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222288746.31740.1309563609107930774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9244cdef6260322d3c30c0f35a9ac59f90dbf78a60afcfe50c460157082ac9
Date: Wed, 28 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672222887
