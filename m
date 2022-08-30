Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8C8625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D6BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661851853;
	bh=8vrX5i6Ns+XYQHioI5YD5vM7eMy2pQ8xz+PmoADvdsU=;
	h=To:Subject:From:Date:From;
	b=GP2AnhiT0S5+EPr8ar8d1xpWr7bzL/Ht2FHBpkq+FljhkKZSxlYZWcfrvu1Fc8c1e
	 yi39+/VhYyMLLTmpdQ+UouqUo2yegRntPFYLqfk9XQjX1u8gesM/ItL270EUGDsZyT
	 7p2SC5HyuAOVzJzSFJXRx7S9Y4M4fdK7zVZVGEw6cBbU5Wz/TEk825YD7efPq0dEpV
	 /SkqVupgK7UUeC5QvUfk87bAS/M4gwJG/e1QYPwsUv20uSOCtcTM+akspxFjS0I3+E
	 Vn31j/TOvll8jxmQiUZGbyyo2Kmd9PKjLWVV3fz7uU0C9mFmH7RrnZ4jTl9Fvn34Rx
	 p7GowfEdzEPNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E01ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185185335.17014.17945558045033481131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb92c76ce6f500de4b1ddb3d61014a84ba26f6031403d5206ea8d1b6c09cf6e
Date: Tue, 30 Aug 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661851853
