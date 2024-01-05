Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151A15225
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDdp7fhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE7CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704428896;
	bh=bemB8Bz/lEIJhq58VugepXFPWuzRmYxkLENOHiDKf48=;
	h=To:Subject:From:Date:From;
	b=tDdp7fhA9h0IRoOGAoHW2bXa3Yao93DSlBe5EWj+OoJaCtKd/TDH2t7hKmi5T0WCv
	 gVX5tXiT1kDSA5ZKYqYaOgApo3hoffKqnlhqRVYq/WzsNliL8Qym7f3V2DoaJt/NFW
	 /3JaFErHJ3riIkusBEk8cvpdtiQATNSFcPXxrAXM+is/gtVL2iJyvoSzARAUXzg8C8
	 52fHcpYV7fkLewYiDsRTPmQ83bDlwwhSMpU8Pdy6qpmzPoqySTTfe7DeWhcGRjJXAF
	 urbTwk9tDyiyQxUJt6eE6kJquiUGqYfvUVSgvqq8BkJFqtY7DCIQFPFssj4uuyH+3L
	 SZzp2l+CVLzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EC09C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170442889646.4274.13776583006118307095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f416c94850af1c5c5007828c2206cfa4897b973f222171d4c58885c765ea6b2
Date: Fri, 05 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704428896
