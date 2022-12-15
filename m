Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD04321D
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DC6C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671143487;
	bh=8k6TN41eIZklY2BIisNLbRZy/S67rGAxZu1nc7ia4jU=;
	h=To:Subject:From:Date:From;
	b=EYRipvQtOJDXAWlbgD//wyvZA2qC57YYitKKG8ThdtrczuFyieqXPNNcIQa2vEfZL
	 /s6mHW3i/KpEeghQSwyUfW9XLanayux5mMvYrPCI5RsnIuJQuOtnDIjZY0GIBHH0Yk
	 CUnfDVla3ZGMgACQpIsIRzngXaFP4u03N/Qvh0VjYarN9A4f8rXfQPYypVk2syCQt/
	 JPTHPT8ZBMxgEldAEr4NogsH0A7CuRh/g7yohEUk8c8lpli9m2TmhFicJdwbQ0hCXa
	 0b3khxz98EU4Hx29aVJOWsmgZxJGAeK1BMuZzV7nTTzJ//tuStXLAtUGvTYxxXyG7U
	 n6nNccpBFg6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C006C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114348743.14430.9359908718528099421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59724956b19a0a0223f606c6450105575b6c61c2632a790ffd8880761f5e467b
Date: Thu, 15 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671143487
