Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB4A39AC2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udTRdB/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7970DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703015296;
	bh=ZTrv2CjDnGhNtFHi2UEYzc4UV+/prjr6MyBRnddra8o=;
	h=To:Subject:From:Date:From;
	b=udTRdB/2VTPlXnXCXeD3i7J9pryxB2NQdyCjD8q4vLslKTXAAJQhHNJ+ZSzhbipPa
	 dtO0198E99ehomQE1FscpdoDnjQ+JV/bykO2KFeMRks+N7bXEtrwDqEA5e3f6tNgXZ
	 L8Die1TctnKXV1LAuusbrj5WZlCFHncq2pQpUnXCqB41BmE8SCittglmR+80DqiBG2
	 YpUR854LLP43uiKSLREAB9v9Z5cyDki5knehwTZO0u0cbREDRufSRro2JMzJ/2dKU9
	 cfCcMvkZ+J2wLh7+0Uaxi40xfql2VTrn2ppzzfwyopR0S0kdOwpODhZjMvBiiFNSxo
	 k9/w2knWQx9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF85C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170301529637.30578.10636819161382618086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80d93ef394cfdb730239bf77d5cf8556bde0f50c72f4c6ba8f4a76d2ebf8eab
Date: Tue, 19 Dec 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703015296
