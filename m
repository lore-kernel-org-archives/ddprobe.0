Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B9EF509
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD27BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695096908;
	bh=t8EDc4PpCggoTZDJDoYSu8pxuEWyFWBHee0jGT2bVrk=;
	h=To:Subject:From:Date:From;
	b=oqXpaQ5Dzqmex6vifLDFh/inUpPpMbSqzrUvesov9TuptmAUaIANxliD8+4lG59SK
	 DgDAKNFdFXz44+55zgLczElQQBF3mwXMHryA5rCcrKaLQMJwqp6ka9R0Q2+Mrl9Kpi
	 XyCByZQJL7LaFjd/9yTLccKKFQMiZFi7n8YTWYDbaV7WeKyOgO5oYMnBd2RYaC8m/J
	 VwY9uR3ct6JoCOl5QC7y1It4r9AKvARdpwCGSDmYwNr2K4jY4/1uEqgNUZ9Uxf5EoY
	 CC4qrZCWeWYEdrWBDqhynYd9OcouRj1Yf2TGAvLtL5r4ObzEyhlF/Jo459rmhXQvfr
	 WTJS+hCahG0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E70CD3438
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169509690867.31707.13875714171950889291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8151155dfa437f1711e5c91797ee3aaa12c569a4e900512dbb57e275f16c6751
Date: Tue, 19 Sep 2023 04:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695096908
