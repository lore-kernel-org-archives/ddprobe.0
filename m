Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1A5198
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00CC8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689038829;
	bh=XtdRVbx0I8eFd3mKj6bhGyy1xbQeB9C/D/1PL4JaGvk=;
	h=To:Subject:From:Date:From;
	b=UrC+Zi6gtJW6sFT5niy3kNKN97sPDVUBBWGlpzIO7Xn7uQnMD5j3jYgFOh30RzabT
	 p3XxY4Q/xwlr2O6nU1ZS98PEfrEh845/HUNcY/AV9nIJ+o2XBT4nmKbGj8cqpVeVNr
	 4Z7p3+j85jTteKWX9iKAaTlkUlnapvTwFQuWLp3HujzVAyoKgvRGljEhRjtlkoQYiO
	 swe/y5CIEq8me1Ad0kqKsDTMwofi+bHmJEenHa2VZkYM0tTygRN1okS9gDMNCc50SG
	 M7fA1T5aMu8zwIZF37VEr5CpEmaD5YN9ThwOCEZ55x8ImsC4loMQZ3j3dldbJcLciI
	 Pnwitly130nrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7682EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903882880.18965.12701993937411791112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c30ef5126953bc0d86815b85c97a3a2e923ea3023644a3d0978b68c3d595fb
Date: Tue, 11 Jul 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689038828
