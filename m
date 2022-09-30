Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E6E1FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF36C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664529053;
	bh=H/yjNayxMW656TloCwYkbvbs/BJxP1yZsGD035tqP2E=;
	h=To:Subject:From:Date:From;
	b=cmihao/YxB0QHtqVNRnHva+PddSxgrpawHcmGzqVxW/KKE8gMWOoovCmc70STbrPN
	 x+mnGsdK7mdt/6UOP3i0ntp6licN0EUKetAhFfpoRgip75DsrCmGsxxcsAqwdxYBPk
	 CKCT67Itzpht+0WkXJ9SgUNs1QspQ1JYKjsKzE/Bv/UtoLNhuo9hRrXR42S0Wqw/lJ
	 S+sxTG1PG4oJwooTnZ3Ev6VFhL/M3piEKBUNbTToGJYxdnHNSj86d3v8d3UxdBiY2c
	 r/muamef3Ul2H3ZZdNctUmAQEpoQ/VhFhGZZUy0fs3rZXt13fmd9iSNQqxURTEJS81
	 WY1AW3jHptJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5767DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452905334.6120.7799125363142556847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e2dc699407dfce6be9f928cd5ec3e9681470554a71bbd0c8a4c8e47f6a8946
Date: Fri, 30 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664529053
