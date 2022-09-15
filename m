Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3814C7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B0CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663273853;
	bh=ZtPgou/82cY6yAAL5rqKyTNLVBjF8SrPWW80ERzGQLs=;
	h=To:Subject:From:Date:From;
	b=jkkJxRUlCkSdtVj7j8pmbvBhxHmuhZytKR/Klvm0EbtjFWwRhnLedXakf4mv2bIXD
	 qSNM0VtNEd6x2xquzIwGEViUDdJ2alh1S62sx8vx5KufYKt7hYRDWoSY997u3XF6W+
	 Zy9ehxOr/U2ohZkZc7nY15xG/F19mtSVkJdQdqReL70lgsyukJY/3AGklX7g4YgZbP
	 +T15odLrtkLAncy/uO1zLnJoyQOgNVtvP+fb9JEhMHnkK6V6r4RW00CAcQSAVy3KON
	 CYe+kvSLIOnuS06dCQzPzNoj1MoM8lG7CzfKJ6d/UunwkwEv/d40vrBWQTevqUTH88
	 rr2S7ebWOSCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5458DECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327385333.5727.15846704301545089150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeaab8b18ba6a79eee044c62a320351753e146240173ec5df585ba2bd604a95
Date: Thu, 15 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663273853
