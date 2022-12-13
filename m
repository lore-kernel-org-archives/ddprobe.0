Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C954F15B2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A74C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670934687;
	bh=kURAqPwF3OxhD3V+FMH+M5JSjRZh5cUnnVewqLYgmLc=;
	h=To:Subject:From:Date:From;
	b=hS2L6hpzyjLgd4YgB7J5I/9Z5aZfujJvh2RjXhN6blaCUbMgkc86oOP75+QH+lex1
	 wZXjwcQ5HICVFQT4+fqkiYZ/fNADjfGoQnbRWXT+pv3EPoK9a81gNhh1P9BtdCNBpn
	 QwZINfWdIZEnye5AlFWxpG/tbhfnkTmA+pd7OQTBffnEHBMeuSV9d4OF+8IRKTf7k+
	 SsnFRgR7bS473lhnjA5DK+3ghIgFD7KTbUEVXQ/Ohul7I6hJE8ZuTsLDMx/gWkv81n
	 KI/3fvRkyqfZFOHfPIz3RsR1CQ/jBbjcx5SmaVNUhXXXS5dO4fjBuL4I1K0cN4o/US
	 g4j1acWfKumOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6E5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093468737.15408.15684367559843733575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5c1de3df6ca0133de7fd8bdd854598d29db8e9e3a955a88d45222285d1f247
Date: Tue, 13 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670934687
