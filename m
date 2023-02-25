Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A0C28E2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 11:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0138C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 11:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677323705;
	bh=cJnHkvQSgI6BT628EMJVoaDWxxj+JERMnOZpuLO542w=;
	h=To:Subject:From:Date:From;
	b=aCqq7IDDAr5hnKpHZyQLSlHSDNU7UyLKd5mKd9AMqYFI2co9TUOLNoV/Kr2YYzpQn
	 sblUKCxdx2i0uqNCdsUn6zBpMpB5Uly8y+4mlU2nlBuI0Abmgaknlm/9oTwV8Ip2lG
	 qODUTQahfW1j1npfrAopvRsWmdtmDT0KPlh0kcLKrq8kEcQRDEv5VrNz0gVL5HqwfW
	 1jKwMFvqcc0BeAc3H2ken0w02ovUHcMixokpTmLSORPPsszZ9ppM/MfNbKvXWy6F+f
	 fdwRNOKLrRqBRblXpxktZSZymiTgvTPapQ8mxelrtdTef+7lwSLo0+NTbnedyvu/fm
	 LozjPAWm7rSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9711C7EE2D
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 11:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167732370575.28042.15180648849637840868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e98a93a68c99be87335cd171dd4599044846e54798c4d60499d7d25cac3bd8
Date: Sat, 25 Feb 2023 11:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677323705
