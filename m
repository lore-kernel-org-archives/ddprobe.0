Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFAC2F30
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74ABAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666976454;
	bh=bn2fy57a3d1+to4x7oLjIdjuKQ16JnHhdgRPH012f7Y=;
	h=To:Subject:From:Date:From;
	b=NFnEuzddqqKdqkiv7eMbkN5WZbMevSB0ctDSAm5xF9EZkO5tw7VNNNev56EKRw71z
	 pH4IIiutzlbo75DoIf///ewpSzMZRbyng+KKpgn2IJFg9u25GtWc0FxZisj6jqHVZ+
	 Avfy0AAEOspJivoVilh8ll2HmqsBOnsdbxA3PdbLdAwMF5ZouS3af5tLKRhVIGR7aA
	 Cx3stvbjRbwYATW7hZpJiULmkcRD8I/HimOANdPwu+1mq+4GqETG7+K9m5bcpVgiV6
	 ilCFs9XJ+HEElzV+jodWBx7BhDYvY/aF2keUUNLR7foce4ncIgKC0GDcT6GjDPxYXH
	 +JO3Vt52YJ9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C331ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697645436.3850.11140164649866812492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8b5fddcdd7b65450aeecd8d68f8e62c701d8343562d8acc404ed212376be13
Date: Fri, 28 Oct 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666976454
