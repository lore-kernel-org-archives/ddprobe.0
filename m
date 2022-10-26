Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B402A10FB
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A9EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666779053;
	bh=6CTXBCeP117xU4pO7yWhMDBw2BgkWyQZHYCxMVV9FlY=;
	h=To:Subject:From:Date:From;
	b=WywwV3FKRMOrFxk01QvgAugMlKnylHO48gw1vo8Nh3ONBh/17HHi4M+QLqLXLB1Pz
	 5PV5THj72UZaCU+mvpUmaR59MziaxAydVKvvBp7QAQHnoIIeKTNDScholEgj+pKAyD
	 4Cml0GKPFZ+WVDIr5FmV8mkhOX7NImBko3Qypy1HqNj0RqsNplooY8FOULao8s8zKN
	 0huM7ZWboSu0ChKe7OLb9Hg+kBXGTXdlBiORWJl6FPDressXYq0qifHVK2ZPcq1a+P
	 2tlNiQq8Ra0erUKTlWni5BgGH7sh9O8jrrHEBmmoIwcCaUWL3HV9aMwntjwuTdUx+7
	 5Ex4FV2ETccpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548DCC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166677905334.2192.6181904530155258957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92885bf174da9593cd9390f0b827e8ac4cbe37b37ab93a580591bf9cb9d6b83
Date: Wed, 26 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666779053
