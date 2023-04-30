Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84603191
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 05:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C580C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 05:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682831166;
	bh=jbEa6tids9sg3Ieg+9NlW8gevaW/Kwgzr5hnKNyO8mg=;
	h=To:Subject:From:Date:From;
	b=KQWRnfT+HdfB3sQE4wbP6OgWaIm3/0vSom3R83M9groVvk5SKokrUy4aosPNJxbIk
	 I2ZNzMUBKfXvtclwv8dCOGF0NRi5SHe0cLiEnJjL459g6SjCFsMdEquPYVOufgS0xf
	 oBbes9XLFPuTCSDT1FGSeYajek5EErdHcovIjNepqE5J8QzxSBdGRaIUJmsBOSxKrR
	 nM9ORpDkSgtcmJ4tOeJFbHHWGRZBovey+qWiu5sEMqW6jIQ/s/nfSt1Q73j+I+uK7g
	 1wMa/cr2cG6lCJ2KG56QviSBa0xvcPzXtOLMpTn/GB1jOiagWV4FxKKG57HfdCdjRE
	 5RO5HvBMqHEdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB999C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 05:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168283116592.31878.9059454185195618762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83614b27b2ccef1f2624fca73fcb610b2e102d04073067a25e265e7559f6be64
Date: Sun, 30 Apr 2023 05:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682831165
