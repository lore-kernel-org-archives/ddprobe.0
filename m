Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25697E19
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A293C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663726853;
	bh=IHM+Ok3UBbCrJPSLNsiwX1fOGjYCF8nW+daL6VF/1no=;
	h=To:Subject:From:Date:From;
	b=k+a68GpaygYGzAB9CeoOukWSKlCOVEaxQVPSCZq7x2h0SOjUJrDeyGofcn0+UE1SB
	 jMpKL1DD0OcdU58li5N6M9wLSGjvySHuC7EHh39IY9Dw6GyYK3AYXAdt0QWWgxRL+V
	 NrC7jXwRDkaaYUN2U9b4kHXZbPHc7d8yjNl2iGdOk20v4Gf3pB3WI6o3tF04glTasy
	 ZBK9Yox2EgLR8OIzNmTZ2m7DiOxee0tGefu4RBug0JZ4QjalIRkFLeRsKDIb9WLse+
	 yru19b+0NwsEcOvvEizLkylK8Gy/1Ksh0AWkR3vZ4fAK0t9Cb0G8sSxDA19XTaFo9l
	 oqpEcuDIzGR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BA8C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372685334.14403.7477993640608872877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75f35d261e3ab968f58ff8c67dafc2c59c4c1031d05be66b6919a17dd5fc5fd
Date: Wed, 21 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663726853
