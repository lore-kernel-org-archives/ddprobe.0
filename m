Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B117134B0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3489C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690559528;
	bh=08H90R9CZg07vVc/8xcpCndkoYTj97D7+TY2k219bY8=;
	h=To:Subject:From:Date:From;
	b=eh0DXvasCYUg9hu3zNbjzbMJiaa/vDJjDHtDoXijb73IsaT2VGzJLxTKbQ7lSwuTK
	 gSK3m9LSCekLXZ+0vdDiBKDfVvGYOsPHFG2wxvqLoh7hWDENtTWNenMiP52lklKg/A
	 QuVu4knY9jjmCXhnwCfF0txlwZVlSHWn0M6Ug/uks6JcxgZycbEIgfVQU7RmU9CMYN
	 Xxq1dtvVLKV++sctzAxUpvuyGbUrTlGnDwGT0LSxkb1h1Z8cpN9FqwpdvvKKQhTYQY
	 LWJXik33pdZC/dIF5BThcJVM7M9iqdQp1DQ6+sKtNGX717r9r6FWiCMolOyYLdLe6W
	 O5ZpZduDPLvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B5C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055952868.9483.16753391460647654135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51dcdd601b2b63c54694b8b608dd95ae2b33402794e3fa1bfdbae1312345a44
Date: Fri, 28 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690559528
