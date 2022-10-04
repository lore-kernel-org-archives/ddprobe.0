Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4F93D8A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A44C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664897453;
	bh=HuAhcQ5vo83ADCNtjQXZ3aQQBM1kimxA+1V7ipUvOpw=;
	h=To:Subject:From:Date:From;
	b=YsDoO4JUw66edzPp9e7juIZjDfAFx88MIKtYY0m1ZLyHy16fdz+0EiJS4I0tooFVx
	 zxL1lBht2PyOgz/T/P5417nMslh3ulNKxxzHw0TuKeaU7UqYR4XUxiM5CW7qyh14sR
	 s+Uw0aTAKXhRkQ/WKHWBDFADWbWygdSRunSoM3ijZKNKNje/o9Rb/QiJ7fwjotdsNq
	 peJYryNUn+6+X/Vxf7a/E/+JX3/8xT5JosyAXCx4u7m9aw6xKJhqBxg9jkETfylB9o
	 ZoHtoJ19H9S5EVfnYTWGVPkPX2U7HmzHn/5x44Vm3JJ/qDW6HOkbVsk3ppTl27XNMA
	 DajWOzLQe7tOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ED9C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489745334.28703.17920333888794671768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031409c0dfebb6fc13045983e8b77dd32ddedad62c746e18d346eeba5ceb4fb0
Date: Tue, 04 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664897453
