Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C002729A0
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6132DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667414454;
	bh=/4M9kpaI9RRkZHku1yXjcgUKlX+83CJQCahzEgIzIN0=;
	h=To:Subject:From:Date:From;
	b=ZaFDxQx/HVR/B5i0KrvRyiMkBbXVBHCT2Q/qPeis+W8QV+P8TjNGDATKLPH9oRNSw
	 dS+wk5G83Xu1+JvkN6s1IoasZW4tm361OdNcXfwhUvEwHpX3sn+ykqVMesHHVatK1Q
	 GNYZ/5RarBmoDtXPsRtC2mOAvPGnnxdCBeCqoDEVlx0SN357JckB7ocLcDXaOgYrLp
	 kJCMICZgqqHdmsubtf4V3WeshfZJova25L8mB6a78v9xLTFULyqstfmId00RR8J55g
	 Ma9g2fV/+yy+NXK7jd6dnlbvzH1/ngHgWR1J9EmPU+5uka3KqRfj58RDIPBav0ad4o
	 tG3wiVP1//fAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5EFC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741445431.9124.282621973265971643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e494d28f263fd56a0a2aa9f223b83d3469580235fc5d7de9c44dd40607e9629d
Date: Wed, 02 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667414454
