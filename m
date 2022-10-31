Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BAF29AD
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A777C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667249454;
	bh=s4XIw3fJBzEJ0z906BRQ9QF7a9HOzXJfzVJsk9G5yVU=;
	h=To:Subject:From:Date:From;
	b=ezDRFicaoX7b3FEOj5ud9xnme7utTFVd6kQ64nZh8LLf81YIazbwrWMRHMj75L+iU
	 FJRcIX3c7Z/4VMtTyGdhYuYdvcFkllIj8eWUlCmfE9k66ohr9jVK2oWl6vZNWoiCpD
	 9nBPaWlV7ji+zM5DEMaSsWZoWjwdMd3PuQDMFXw0s/NlQQIrPvoyruCYemVVyP8ylO
	 P3+23Pl38mndRMgNJ59j3XyQwgvvKTldJkEX6gk+m2wf14hUK05IJhjDlyIqek15/9
	 +quxxSJdvNqC0mg73AYOX9DipN3rL6ZOnSDgHllUKOzt9339k13RxW9sE1+2SfpXqr
	 F2m3qO3+cAplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF54FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166724945437.9037.1966867315501542882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514a62d120742c1b1c550811feaccb49f8428a14def34f36f850b124be14a298
Date: Mon, 31 Oct 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667249454
