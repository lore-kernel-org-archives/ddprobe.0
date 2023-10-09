Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428561775B
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD/PpUkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0451C433C9
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696846028;
	bh=L7xosmvSVGzoKsT9u0qw8moenSAHZhHwx1c/3aOq21U=;
	h=To:Subject:From:Date:From;
	b=cD/PpUkXuuFYFswqVqD/GXWIGOhmICmk1IfuwuaK8fvBbxMzhlul78o5qU/PCcSA4
	 eU9wn4w6FFTm9iFrz8aoAlQxSlahmX1xp0ZtLLiVA+U8r2UbYoy/8uxOdL3b7ijGko
	 z5gGjqIyiNehzf896zeICKeN8k1otu+rfpFk3kTafY2ZXO7ZJWSmowgw8CCz2ZPl9P
	 tMKqp02fi4eUs8LzbIPggi1DY5tA7xIVh5AhOpNuWY+UReyNLl1OmvfRNPPRNfNMJo
	 bZRU5nE/QbivBwVkBK5d3NsZIggV2kPqodavMkKxEfLLYDlbc1ujHiIkbkafnPSbRU
	 84FAbfCgb7mBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76D9E95A91
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684602867.25087.3050911733598507623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8961d01318752a5246d4bcb09c40f1789beaf59f0f85748dfe48cff6b75f1b8c
Date: Mon, 09 Oct 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696846028
