Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBAC17ED
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B3F8C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667869854;
	bh=rJJnwyH7LtIL2euuZWuazJ9B35HuWSr0AJ3op5d/nHA=;
	h=To:Subject:From:Date:From;
	b=IYX+1omFy5KMVUt6awbW2V8s9saVqtucqGBFevwy7PSyjoXFXqh3P1oA5A8bI7cMq
	 o7sMDLhreSHyQ8k1rNpa49NFqLI8qXM3uJpaD/nibg2v2Wnqbb1oprEgiFaBSmKbaU
	 jDpvLEo2aI/WjDlHuqpCn+D6whpiiSeUjvVonaUlo4x0eDLzJ5/Psm2CDGAgVt3Ybt
	 OAVT11d8nukJ7D7v/wZoSxeo/GwR+bQTdSIdYStzJM79R2hFHmPwon9Mznro47avbF
	 f8Q2Hf+Weqv0gM5WyLxUh8ZkhikWHNpZi0ZIVKSewEjJKnNAzySzn3lXWPsn1H0vzD
	 xW0tnjzHGvX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B194C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166786985449.22191.485831166001077083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d8e4eae0d21f1ed40eb75fd4961f16897ae50b8c81c34930dcfa1fba18736c
Date: Tue, 08 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667869854
