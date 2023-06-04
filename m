Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2DA569F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DAAC433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685923145;
	bh=UiJI/snL2ykzbDEkPQSq+DAuFjt2exkkfi3dvt/GJJ0=;
	h=To:Subject:From:Date:From;
	b=hhFtKtBOBAPEBNmjVLZJ2bw7bUuCtBWt4E4rDHY+DPY7butvsxO5/tab3R+TyPFk4
	 LAiMHElPQWhJBuofOqh5KczOdsXkfA2H4DNNbJEkoSqpHh5jhl4fYQtxOBabxVP1L6
	 VmsPR4eXB7bH/WK5U2SYxsULtaLjlrL4Q6E9JfOa77GQKNqFepHN52HnA5TwOdld0L
	 oYFW7mPRtAsJZpJdIDsnCBUez6VNv8WIpIL9JlChxROSZeZL800JvNgnCrXjp9XPL7
	 kGWRK0hxN9GZ2S49uZLReeprppIpbFFwxUFnXxvghxhA2rZofNiRlR97wnDa1lHpYE
	 uW+goXZfZ9JLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4C6C7EE23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 23:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168592314575.28151.8214441017911167329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec30107e2ce5337eaef94062f7bb48f4acc045702f75b5058aa4b6cd8bcda8ca
Date: Sun, 04 Jun 2023 23:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685923145
