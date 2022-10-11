Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA1633CC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66ACBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665528653;
	bh=XlrPG35CcRS+Dy0zU2NJR0Dd1CBSS3Soc9vmq77H1ps=;
	h=To:Subject:From:Date:From;
	b=EOKnwHCWeaemsPFe98Q3w1nklIJI2xeZ1YwVrmBZ0GjNW39UVEcH270JOrAPHaJN/
	 Uf3nmIc+rVzJVa8IvgkN4rdK8LcvcLO7ilCCWTXg9wJS74GkcBW8uYx1XlVuhhb5EF
	 XEZFbw8oJ82ORGzWwW+7k4uEavmOynhfxhtVe9lmFcvxFjy7R+tDEI46HBMX8qvta8
	 88Kfq14gBcAB5Q56BkPK7PmMZtynaI/W17YB6h1w+38IDaoS9iDEdGt4yYOU4C+9Qg
	 Yp+7/ynr7XrjHqGI2zfh5ofOMrlkHAWWMuh3S1cUjiJsyhIthNk11YjXyGAJsp6uVx
	 JOWL1R3dmBntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5139DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552865332.3792.6085987644255489609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aafc1de1ce61cf11ef97ac96b172bb1486a97e591975fec579ae62697c144eb
Date: Tue, 11 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665528653
