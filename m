Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BFDEC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CADC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670585487;
	bh=si4Dj8hUM/k02hm+4cP6jenr1WnKPgHpU4zp4G/lO1w=;
	h=To:Subject:From:Date:From;
	b=motvg23tzhNPkzgQtjaljNF3LzqHTlZdRRVO1I4Z/hlVWh7BkfBgyt7dP5HVzGelW
	 YYuk5+UMT4TgodHV+mX9wLs7L0okMfTXDQylE/8Aln/5h15TikIsQAjPk2xsZiP1EL
	 p+GitC93qmSHILs5/mBZz2KouGNJZmjy9p5KpneRY0OFnModbnsgki8QO/nFerDmZG
	 rY4vJBkI/ndhErLMg+MuizANES3MFm41+XXedWdCCbxbIj3YJGLbvYYW0IO7r0CtBH
	 wDPPaxSi24/ulVVSqz+DrdJ3qC+CUhVZbnOuLCdr/PaEF63JWCzYUJU4xylWqfuyi9
	 Tn0wkJEJ/hKsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8A5C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058548738.29038.17091885331762897689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048d8cf0157a851a0c5e69a061aec34b914684138cc8bc587621e4cf8355ef0e
Date: Fri, 09 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670585487
