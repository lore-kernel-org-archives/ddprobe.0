Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEA52565
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C711C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663803653;
	bh=mM0vrqIPXmv9wvDiGa/AX3MmZzOezilR0lvF84aDKnw=;
	h=To:Subject:From:Date:From;
	b=kloLJUY9lhlBmH41hgQYqS4UANOxn8FJJkzvH5aBc0zUsedP40GOdlmKwox1+pTnS
	 3KUZb653BRoBmU/u/ika9IQ5RddlFvEbSNh35XZgWEisMZOr27zdf2NMN0aBamw5an
	 6h20lxhskYgK5PDuVKLUxqRqKXGD7sDf3MlAOu5h454zCrkNyPQVzXqoAfLgE+oSrw
	 oxiQVRRzcaqJSL/6pzKmLEu0VE4YLSfYFJPojN8nxOEefU3ONOaOdrFgi9b/KSO4pN
	 u1XpLF9lhqr3YoTwrOdZ5nU//BHnPX01vR9WTu2aiA4Xp8IV8h7+mWkrAVIqiKW+mC
	 zjvxVIWXdXR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DF8ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380365334.26059.15587132519404582570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcc7e48c2b905ffe45c7bc010b4bd2c0dcc859d763237fcb2333dd7212ee83d
Date: Wed, 21 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663803653
