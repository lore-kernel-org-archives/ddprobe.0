Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022C5EC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DF5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670649087;
	bh=i3BVfnAaGk+Md9+H4I68oQ3Z/KPK7/GrvYZEPdOMDzk=;
	h=To:Subject:From:Date:From;
	b=pc6OEuEexQzB0j6vHDczdZfgbjzpIe53BBdhlhsvKRNZmnSE8sJGidD7HSsXatdFM
	 SHkHyUYn8xLwEn0nsaJi52lM5FQCv+FdBUYxPsNP3099LfSFviF4OYngvWtEMJUfS1
	 Bq4WXGRZbQwSUlkBs2lPZInSCOJmvblJjngAWHIuRf7/C0xHVPg1r7ptyH7VeL7YIQ
	 T9XR0hqQAqXylgj0eInkSAGj/Tu1ZT0ffIUctCdADf04UBvKOF4BgwAoYgyQKTZ+FN
	 uNagv10lZlL9FoborP5YMVb5uLyt1ngHqug+0dW9sKRA3K9vJ5CtX680qJcugIjoK+
	 v7kjThQ76amUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6856FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064908739.28034.14854537634111272844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5059757f9a5cfeef2d109a16d323fbb0146368ea1e37679de96b2494afd934f9
Date: Sat, 10 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670649087
