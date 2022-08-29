Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B502E5C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E27BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661796652;
	bh=zb/4Ppd/MTl38wSMX6gCJnqOji52vG4fDcJm24jpsck=;
	h=To:Subject:From:Date:From;
	b=gqjysn4U0Rx51K6aE6iKIVpVyiq3fMaNoIULeqJq6MZcBasdzxgETvLBaG18i9IAq
	 IAD2aclt2cEvwlsTiwBA2XYQuCeDgXDqE/Z428DvUotrsp4TmW57sAB0AYMkl09j+l
	 5g8nXONN2HnzEFWJjKgObe/kUfhwfH6DrQiEnBgDm7rcRkBJb7NuCCQeURK+JVdRmS
	 JrUv9ZYK9eDebuaWQZa5/FI395tGxdT1ldEuCa33WNLy18PlZn058g+bCrXNP3cUkk
	 /wRE6WrwVb4aFRR/fwkF0N2W2BZVZuZ1I4VSho138ZRx/UwP98Tdpg7lo5qtU9qPHm
	 6U3Fhl40Sv8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54937ECAAA7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179665233.26931.2316202918968656801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf5cad7de7a6cc111ebf439e6d7acf80a41ea219e7a8a7bdc37aa002efda13c
Date: Mon, 29 Aug 2022 18:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661796652
