Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5371BEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BBFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690429328;
	bh=b/4KsLIXcfFTfljA8dFlE7oHLqjbOyNiDxELTncU0Gk=;
	h=To:Subject:From:Date:From;
	b=l/wR/10IT3gjhYXMPpNBT3R5G1sYLAgFc6yDJp9hX30GvsTrQjCnHqQjLNTpBq8Hr
	 IiCASVO5UalWQ0Iw7f/rjCH/gYI871Pa0mncIdsxiTIZSYjfmq1dnHpr8EjXGBOwAT
	 idVzT+JvXB+1Ps/lt4thVuWDxwXu84GNhPBfR5xT4qmCbOdPd9q21CAiuqFfBuAbnW
	 AGxzdMjOGeUoBtHtABdujBeV9yUFb7xNSRlGZzdszSP1TBoTFMVTNzvLI9wz3H9ezE
	 fcG+NYKN0rNaKsr5BfWbbQ8U+lbv1OUpFqFEpA94Ca2UkxgPcGxOXQYbcTLO1vi8+N
	 f80WPZK4ctLdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9185C001DF
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 03:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169042932868.14935.12836931908251628481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486cd7dd8c6eda8a79c6ecd507ab24e29032be05f7dc6e932bf56f488c85c8fb
Date: Thu, 27 Jul 2023 03:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690429328
