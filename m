Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B74179
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A97C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674109887;
	bh=HTrYyQcF+V9H6lV8Xy2uAzt+sCADyIHlSQuv7s1/XA8=;
	h=To:Subject:From:Date:From;
	b=Wtotxj0SSQYUMCwfbANrW7hdAtVfnJg/SxF2FR+6EqUMR0u3GVwNBZvfy7Q+VEdly
	 9cRnTVuUda4p4Jp2ukDF0mNP8XU5vGHHhUeYKaladUXRYPL7gMf3OL1sbr44Y+qkMg
	 M6tuSb+YNpApyFXChAuAB/4+FhPIxbitRYjQVWZc9PcD1JhJUj2EzJ91qv9y1aHjBU
	 94rD3F9cBPi8vWfvhuskUbLVPVXAv3i6+aM34Lyb0XxsiF/ebGYLu/eoBHkek/lE7+
	 HlxIIrGFsno6N9zTCPyN3Our4r5jxTU4FkG8MIu5RBPO1460aX9YD6cfvMNd9uPVPE
	 LXrrlaN4A6/Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651C5C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167410988739.30311.2006968636014439389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e309879301051da0b6657688c989d0d8c3b428cd504fac33904fd165db498ae6
Date: Thu, 19 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674109887
