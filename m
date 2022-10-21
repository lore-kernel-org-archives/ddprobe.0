Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4456130
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C01C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666381853;
	bh=/+wgATJ+WGExP5nDk7efumlGvtQmPjUz1vKqht9j084=;
	h=To:Subject:From:Date:From;
	b=qB05s/av0xiGolSOpIvcRtodWyqqA5zpCi5MznDjZ/0iZNy6qnNGd33RwP+WnY+kG
	 vUtlX2X/kLhrLW0Rc/sdkFPkjELOv7+wpKUQgHd/wkjulA1WWUH8Zh0DdSWzaokdlo
	 KGh7PbKrPYqLSuKiCjvVAKXzpw7zWWDYh57Z7sWR1EgnCAyizJkWV5Ub1Fhsg7klrP
	 XjA29NVrKUbQzlzzltP0yOaOWBDsmZ0ST9ixHdshPpL3KHxWw1Ks7guGdYDnGiJ6wZ
	 CtNkdJkl/OY+juo+yJ009Lyh9N6FgAYcbLbogHFx1yriSD7RQiJoqA+HIeQ2WBJ2XI
	 YCjqHc6RC+7cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557EEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638185332.12854.8818715035908536063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689984da8d4968c5f29858722b5ca32f0124e802bdfea8085bf978717e330d33
Date: Fri, 21 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666381853
