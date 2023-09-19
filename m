Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EC8358AC
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 07:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05E6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 07:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695110108;
	bh=AgUO1pHr6klN0zZxFzlsynQOWHDgsBPznWyniu7K5lA=;
	h=To:Subject:From:Date:From;
	b=oWDXYWj/CuewiKVCCO/hUAiBg/3tW54fXyqm3Xb5SbRbRngJuHSmRXyhgwfjVHaHE
	 4dx+xm5kWFnod3tI0v7ScMd2pK2GP9kYqWx2Y/gl4dPLjPPEq6T6o/WLtfDW+rJ1Ds
	 OzYcrnyDWpJH8lMfXk8MDEnekFtrdmES/L2rhg/du0qXNcXfxlvYpZp0+HLriEfUCZ
	 fBmuApyzVnMQHmOL5SYTFHOnXOmXFuWpxZYlXCka/gXDOCtQiA+s4qXnpyK+7vckxZ
	 zLMnybCl86Vu6pAlRRIHIOn++GJOkEfYTlDKDQeNEgtdTktiqvVOuWjVRoASElON13
	 LicPJmIVdjo6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34E8CD549B
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 07:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511010866.17653.16271116598737219568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98609598ae3f7c98e95dd9bf7702423c7f6110f97990528c509244819d86d3d4
Date: Tue, 19 Sep 2023 07:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695110108
