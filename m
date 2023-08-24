Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0CE17FF0
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE819C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692907448;
	bh=2wtU1ncJKq8cs04GnVdcJ8ZW4AhAaVMsf0Lh7fIlW9c=;
	h=To:Subject:From:Date:From;
	b=elBZyZQivtiD7q6I6/QvWqIPRUx2SK4XELcKwA/O6zGemwmxKus9yPfTAn1nRLkc2
	 YxJyK+CCw2wRkE9z7OtsIQpGm45V2kyCPfGdYKs6dzSlIRqRqVTwSdpL0DLBEFfSHs
	 egoZphGKCzZHSy8MwRAcsR002A59Hvr2NJiK9/+XyVQPGpu8VJRAefxq1NdcFI9KzR
	 +U5w/Y1T74WriMbnD48hPL8xlbuha/2YNTfjskrNGIVbWz2AP88AJQu4Re5p0pmL3A
	 R31XyQdD0DyIl2PKNiAKNHZVt4kiIHWhXzlGvLkcHH2IQ2pz7NcUxBt2bHeScPhDAz
	 sInhpJvzEnIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65C0C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169290744867.6899.2566191010100880808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcf9ac04767edb53e431f5f75e84f4355e783caf1476c411552989e37ff170a
Date: Thu, 24 Aug 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692907448
