Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597747E5
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3O5tGGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D015CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696559828;
	bh=x4jLDjJ/pW8Zwkjy210Bz9W3g3l9/luDx2grEXbx1LY=;
	h=To:Subject:From:Date:From;
	b=D3O5tGGxuEtBkluLt3SQLx3smWMNHEBuykcAlT0aODQVTbqcSY+Rgfnjzeqb6xdq2
	 Lv24IViKxq6YK4/zbStxVO7J9wSXHKXsxC/rpTM3/7aLdegJQyDcV2x9BRjB7Ioi2q
	 1mf9rYc6g1kwVPtbv/LpVDWSHh5q5v3btVLkG7q2QlFTgfI5R8yjwIwDE+KQX4oKV5
	 CbtxzhufgY1Z9oIcU+0jVmEKsoeZJ8mTNl+5sUiae+lp9S20jMrSSGu2uMkGrX6YYv
	 Boo9PWdPLX2g2VLx7jTgFWUwFZehDYD52p+ez821gY3Hln30OugJh9azd1p2tkwoss
	 +STgtwQx8fr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B306AE92FD6
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655982870.21495.2679881131965160025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bafc660185117c82d275d4229689bffaf7bb1699d37f6540576c2f9c6fee5df
Date: Fri, 06 Oct 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696559828
