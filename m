Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D20BC2FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03BAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682510226;
	bh=UMHDTrk2KoaxBGebZKOCzv8mzCUdw6vpLRKk17HNiOE=;
	h=To:Subject:From:Date:From;
	b=lPJazvIiMmltvlwdueui2oQIRM7XQCVJd2WBcA/WdcRpF8OvyvyUHMv2nLeY7iPhI
	 ytIm1NobOKt9BqgZ3wI6TgTqSBZKCtc7zcQ7LGuYKwMWekxih5yMoHd47tgxEvvllg
	 ORZ5bb9klHPWWmsfde0EUKGsqljDXxS/hwy38dbPhLgoKL7Wh802uiV4s9GO77aDTl
	 4RxWgrTK8YJCEzB+mrpz5Txpf0lY0sFr0flidlFmcZDu3OPqWERevXSKvmwMRVa1UC
	 rOJP+dMO5nTshV3h1l0QnJsxFfLFLubfS67Odpvyd0AZVXJK8R7KbSNHAzql5Z7Od7
	 CoQs5UpQpe5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3172C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168251022584.17182.217480273912027121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb49f1a1293a6ba0a3521d464bf3670e396b566eafdf1bd6db9caa24e7fad02
Date: Wed, 26 Apr 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682510225
