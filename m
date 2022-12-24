Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30C67B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EF5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671867687;
	bh=Hv02cGhrWtRh8Mcsd34gYvA2FS2xMcG0A55XeIxiKqU=;
	h=To:Subject:From:Date:From;
	b=ltiEdh/MHbyX5Fzf2Noc5D8WDm4inWNgPBJ/JNoAqZRbrm9Rlud4zhPnofbh4me7b
	 n3YGc4FsYodo+cLlaxagUDjC8Ye7hW7AtUE4XFAm41x0i0678J7xZMPjJV3gezc2js
	 d6Zg/MYTVEQYAgz+4+PoX+f8eyyXiAB+/HwT5rh4wig3AzfIQpPm2ZNaTFLHiq9LlL
	 Nwxpwpk14ML7RAfd89/L/KWYuKheE6axcbEzRvPNFAidAwUfaMUHxoYTpkzk8C+OgC
	 V9EVjWG3YgN1791L7nCmeJZ3YqtdmEhMaPc3ECqxqhetbgXKyaaqZyCJN5rfIZ9UKm
	 di9xd7hh59Gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69071C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186768741.1182.2137124022004522384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f095d249de8f7c7f5912270503ade08597d43cf494a1e181af37e7fea0fcf28
Date: Sat, 24 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671867687
