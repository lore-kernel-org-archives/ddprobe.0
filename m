Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402BE320A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC4DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688979428;
	bh=mR0A6E8MJOSNV7jLkDLlPjeQEjamZy7v+W4P0TOtzTM=;
	h=To:Subject:From:Date:From;
	b=gNaydXtS6ZVjKCICiHMLesm19h+M/fXnwFnpzPTC9eqwSFXqcu/H4TZkcXfYtylOg
	 wpDiIebD22M42m5bxKgmf32C2hfZJ9ItiA1uUhLa61+tE9fn7vTFn2X0OLNE6I/6m2
	 vauajqbE3TW7yG9Pt7Ps6nP8lYJ4975j4U83kMxMc9X1dl5Y6Uwg2XX/I7BboS/bn0
	 t1ifnNF7hv+NlTwR12EinksjzWtmuD7le3+TyYxzbRaZ5htfqRr0SGUN1nU50Y/Y8L
	 0jUH55s0TZsUJ1pmgoKDHh74W8q460x466ddPHnQ1hJfKokkRtwoPqPhdLGRYT8vDy
	 ayflSt2gVRvlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46EBEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897942866.574.1471344933885126790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b004b02c7b2dade61683298a7839823740d211a41717cbc559b673c2b6e40d
Date: Mon, 10 Jul 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688979428
