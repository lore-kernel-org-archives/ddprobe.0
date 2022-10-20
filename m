Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B892C5C96
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7381EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666285853;
	bh=hSmxciWUtZEzjBHjcB/2D8V+Wtxw2Dgi0SdfiJ2LAVo=;
	h=To:Subject:From:Date:From;
	b=rZZ4MvPgoSTzjzoLMfoBHMJqXIezM0WuqFI8fgdPTLCJYNefWkWLZabeVY1jBqscV
	 4A57JimD714UInvS3/0r+GeZn9h3SKjO6Xz3x+gHMqdpXShSIjWyMnLi9FfHcH0opv
	 6BDtOVPac8E6relSEzVB0KvVjS4fJavWJkGG5cnC+4BJWP1NGnkF4rr6NflAXhIg9B
	 Lt1SZgcBqH9Yb5rgoxgqEBVmKTxt/JsJQkVyU/VcetsR9l3K/VYMHaAhO4WpD7TZ2A
	 rd1Hbm1pSFjl3sm8BJcADlbHWvtcE+tEx8ypWdlS9zfzVAOkh04nbzc6QEtG7ygNqs
	 HzbGwEuZgbVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5757DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628585334.1741.18079475560819646847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ea2482264f22781d436019a6201bd2deeeb5724e5a719df16aea6fc15b97d2
Date: Thu, 20 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666285853
