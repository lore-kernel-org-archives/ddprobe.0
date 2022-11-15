Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75527C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A587C4314D
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668475854;
	bh=FcF3QP9g21+Ypzt3qAS7v8ty1OWFGf/A3t1nMDyWfuU=;
	h=To:Subject:From:Date:From;
	b=hqL8WAabab0uxSsDRyPZWSP0V3cZHyTWDuGHvJlT1+eTjgOkmsyqHwAAEVT+ZtF8N
	 R3T4syvVq/tAt/cWySV3HpwitWc+vYGZlU66Q+AmfUYgVQ/fChp0CFLnP0gsRCGnXc
	 eXG/sMkj2sarKxBP7nE4ZauHcOpmA7N7R0DL3sc9MGY3pwOvoTicktFDcHfT6E7zQV
	 c4ql8JJOTv1nC745s/TG0Hhsqbkj21pbT7gM3UoXvCawLHG93CGF15eCFMbWCtIlpx
	 P0qHZ0njZLMSjponIfwnVY+57WJP3ZaXS7znnywWzX80ZHYvm47bu8IyFW8MlhvFrr
	 0iuyK1cr4/CbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEBAC4167B
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847585436.32070.11924523611251970565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4110feb384be2d482297e9d4de0c97e99124eb304372f4379f53abb1f9e3083f
Date: Tue, 15 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668475854
