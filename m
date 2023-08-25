Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6558A1803F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CFFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692995048;
	bh=Gef+8lmYpo+GA4VyaI3vxPuIu1pXHwTlTHXwn9xFqRQ=;
	h=To:Subject:From:Date:From;
	b=gw+/M9cv/2gr8OeBq/XL0cotGE4vYFoCwo+PnnKsxsTiVmuKP5tn56+Z7MU0pzpAO
	 wnLJtR4tmbznkfyoR/s5Xn3xAdw1aBpt27BEMn7jHuIhtT4erSgu42dC8OdLVSkIKu
	 iXKjQ4mwI20kW2BCxAtXzuTZR/94VLrSPZbrEoZztBbsdUH7hV28/jxrl0DbUkp+zd
	 R+SdWYCV6E3FCvAeKrePA6MKeTTnaVFwcSyyXTHJ48+Qy2YShaUHnTg51KYrSDSddJ
	 NrwuQSUMcd9faNoJYEn63o8U5kP3QZVOD5idaabB6nRJ+KzD9W3OrmJq33As1OAz7R
	 DMkbTKnewF2xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977BEE49A3
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299504868.20956.15815748845051448927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc097c093d6c4b3a0ece21d3aeb87aec2db3a6be36685b676e77a9323c85b7e2
Date: Fri, 25 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692995048
