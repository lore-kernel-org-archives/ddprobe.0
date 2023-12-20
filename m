Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BBE11715
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUGQWaL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FCDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703041096;
	bh=Sa3UE1QGf9ozKVttBCqHZ29MFvRWkrd8ldGI8aeZoQo=;
	h=To:Subject:From:Date:From;
	b=pUGQWaL6W6S7zc3uTQZFvLVnev3Zq1wM+UIAzyU29iV26Ds1Cw6wPp4eEEBfQAiK5
	 P4XxK+1rsA+OABuezncjN++ojHEXq/9tE+cUAsQBcLgW39EbfFMEn7apbP5ztL6V9w
	 QdsOdLwTjw75YrrHZ+PEQSr8FU0zK7LHV4SpkDK2v4Ovy+ObtGZmZOd8V+Lp9VuPZb
	 32kuUZryKKAvcmztf97nJEU1ZJQTZ5KFLZQNafFnsH4KbmctNlshi+i0Ynmx6DKweX
	 0Aw4zndVphFNu36F++Lr/u40uM3wGx+VDzDRQmvkIOjD+et0yJds6F1S6Ea41N133F
	 sRUl70AjBMA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F28FC41535
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170304109637.29427.5459469169749640384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a57483a2ec8f140c7741c198418d4c3197df3e05465456e77118dd80dcaff4
Date: Wed, 20 Dec 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703041096
