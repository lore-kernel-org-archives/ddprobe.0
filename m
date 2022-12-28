Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5804A2A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776F6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672189887;
	bh=SCjpaH4EqwkhaFnLnWhvSSS297alf/Bqr7O1CZ4sos4=;
	h=To:Subject:From:Date:From;
	b=Jaffs5kTHR3zWTlcw73xwlYH6mhc+TTzxMnmjH/S/FMtzV8WlrjkhK8KRSFRkNYcg
	 6QnMK6egYZNTuWxhOsS5eo+rJ9XMPl4u6JzJX1aMhXiJ0f7aizkgTQEbu8/c4lhipP
	 kFVgDDKJrgcfg1K2lgN/2xoyJxNV+BeuVjMVGXncBJh39/7yAkeysR92tqeq+/KQ7u
	 KRVMZqKbPYkIEhv1Eka4T8aZl+Of8USZ9v9tASXN0pGeHYv8oF9aZ/89zMUwaVVVOa
	 4WigeqkQ0KgLF0yEXexOc2ZcfIt8P+eSbAwL5OQjGZCGfE6gI1bPOrN34OwJxek6Py
	 Kb4q+bVglI4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F52EC10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218988738.8602.14996120503446863081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7d2f5430e517a8cee72074c880a4fc9e03011447ee25d06fa8313c934ed528
Date: Wed, 28 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672189887
