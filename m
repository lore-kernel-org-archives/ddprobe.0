Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99417E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8CFC43443
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671537687;
	bh=5vcrLwxgxT1s3+z3g8mC4+kUKiYsds9gONIM1vpnsps=;
	h=To:Subject:From:Date:From;
	b=GW8xqdCiQISY2r22nbTerxFl0C9i2jgeXBqQG8q8Ju49k/AfYzjzvakG2TCwFNhg4
	 hyObaUdn4HvTluv1KHZxRvc0nQoyd79NHB8noI+P2aQkXYWM62q42+d+LZDe6IJO3O
	 JcKr1xd3okoaMLFJBmX9Q4J2SrDB6Rz3VrxHZA0O+nIPdocCIwmcQcMxEvq/kAl+sx
	 QoCO8Pw2f5VrCFZ/bbYXF7yEhsOTTONZDJmy/D49W5bSZsqZD3hkV7y4S3NYSN661V
	 I1gvb9BxUv9eLJ3A/2Uxlko+WgVs++UOAfsA4g/jdn+WXj9QP4SAy+Gqirdl8dUKPH
	 NjUeaXbO55tMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648BEC4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153768740.24147.8293428723157536222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e602abb462afee5e38bc983dbe88630554824dd8e366119a42a112531f9519
Date: Tue, 20 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671537687
