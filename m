Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E0E185C
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D10C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688842628;
	bh=ZjwOpuol5hA623FS/k3AbauaX8SS3fF8L8zbtW3vDgw=;
	h=To:Subject:From:Date:From;
	b=p0dcU9PsppXtPTZk0nFN1NLwk7uuxyF1DLh81QPtkgNUpdBvYJvcWBHX6z7Jye/Em
	 S0DBVuI4gqp5q7PfLGqgS/4pSpBGaqMlcA1jku5aECG4ZZmlrFMzN3NIgxLMUAxSr1
	 kmHr2i1ifqoGshQ9wQJOTJabd/OeT4OIA55TFCLlUWCVe4bVc+PeUq9PSZEPTVVhHV
	 vDsVSq9H0n8McDdqZyDVJ2eHL6Dp8KhycHYCs1pCnEnQ1rocMB+chm5p1bZ0htwv4A
	 TLUL698GnGVLcZGWJwhm9FPd7xRlEk5CCrrVR4QQesttixDShGZGtwo0jM6i/AkBJI
	 L8MpYQ1HOisAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7579EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884262880.8524.3252668058749202662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764a20977ee4dcee4b48bb8d06d6ff055a0bc3cd5bb0a97cf16a086949cb8763
Date: Sat, 08 Jul 2023 18:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688842628
