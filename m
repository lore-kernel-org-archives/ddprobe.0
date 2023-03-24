Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C08525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00503C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679658666;
	bh=CbOscFZd66GqHGjgQzVG8NGH+KS/puTjk0fq439sWIY=;
	h=To:Subject:From:Date:From;
	b=SPGKPI4wh+89yNkDYUQSwPi9OlQBWwDCmgJWX7mC8URI4FZ7m564f4tT+86C7/9Bc
	 h415H1D/v9ZzQPzwlJjrdkQ2JpS+k1a/PN3GGfx8wrPKoUt2khIbtBCXwUaVx23cIA
	 Mom0Rfs1GmbTIqgfYHhy5ToxpTzAVGmOhY1QcSuassdNFC+jvtcaOYy5T426skDTev
	 +1zizrUnjGFI2goNAqBWzrI1TbDDQ1TXX0o+Wtw8I3mjuRnI+K/cspvE2VmWbU1WW/
	 6q/rkSqKr1ton6X7T6PdHWIg9RyNrJDd3O3gXwHy9oQO2tTeOlHx1ie4OIP+h4H682
	 BCOFFe7gPZE9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C7DC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 11:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965866577.10812.8175866011158469034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23d7ffffa3b10079168d79dcfc171ea9c6474c9dffd1141e01496757965dc35
Date: Fri, 24 Mar 2023 11:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679658665
