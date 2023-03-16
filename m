Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABF2612F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E100DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678986605;
	bh=A9jZQ92H3Ys0lYpFiTSl6Lgh972qvooX93+GUd/9vF0=;
	h=To:Subject:From:Date:From;
	b=Hc72H/CBMudfaJYu1AQbnyotbxDjkKkrpW5B7JuvCzzmF+L1YNDAHi8pb0awTXTSC
	 5Ao5iMzefjE2oBNDnnJxeAGKH2XJTtPTvwmvIh+ZI47PiktkEQsjJrqc5HgF50oFYm
	 GIkQm2Om80OKKk5HogrRW7CTUyr0ud+/3FELkfK2Bdt8ohFr2iRF/8X5QDQm258bXK
	 RoFn4iiIHapGEwrWoTvp1qVUwACIUm/Qw6GmXFA0SF3cPoPSiNwVwAcNDARWUjUckV
	 UcdgLwHZpB3WfKarW+9UvY3t93jZ4O26nNRl2Il5q1HDkZm34MV2TUICgsSCQ+mqEy
	 p6cPxjQVhEGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68AAC6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 17:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167898660580.10068.1990043114761246564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c1bf22b4edb33545c876d2131832424c82bf92b2c5d23ad4586740a4598b88
Date: Thu, 16 Mar 2023 17:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678986605
