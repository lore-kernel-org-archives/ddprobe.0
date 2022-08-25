Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C63C14
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEBFC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661451652;
	bh=Urs5RrgCJOSEvqd3yFufG08UYvdUFrDKVxbFEnv3/f0=;
	h=To:Subject:From:Date:From;
	b=q4KmoO3D2RgMjMnSG2lJI1vWE7U9ZLmQ7XZr5TZ3KeqrGLjM48+WqZl5jdufErxqy
	 ZUwAZBcPVzHL358UKj3GkaGQtIgGZnjoIELBMSfVC4eKlTY7RwETO0PDnLCevVsjql
	 iL9y8FEcjrbretAHOVEtSKT5MOwcD87YpYdto3s1hxqdvkRDUlKNDCovEqSUWJI6zd
	 x40xv8t6TsTl2UOMG+kO1C+NZEUB701q8DU7WRT4SEZZBYqG7qexq63ZWWVIzMuKyc
	 JrFC8gAh/sX/+rYAM87HuhfEibtb02dNWHqMXfOacDQq0ScyBSMSaBtBvuEWMEC0Yd
	 eNf0MvEh3Z9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5259AECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145165232.6937.1896677834574839357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f16a7c8b75117f1a6ea579eae73754fcb8c69908717d1082b3b59b42514759
Date: Thu, 25 Aug 2022 18:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661451652
