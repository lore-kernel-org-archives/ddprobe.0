Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637F83D8A
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 12:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02DBCC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 12:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678452306;
	bh=raJSm6woNkbAW+8y8DzsccqX9DijLlSZwehqYDHFMuk=;
	h=To:Subject:From:Date:From;
	b=mG0oWbNNt4NNr3yUChbJGPuNiElvwQRvlkHXcA0ppBLTtnBTaT8PpJq68o9o+aLeh
	 EzgZTCjCgsFqQmpErQRZdoB6CWl8AiPB75eAAaHWxfUSwAwTnoY7RPxkudV/Quur9V
	 U/gTX64ZoLgl6YPMCxm80X8HtKZGP80OR/ZyuH4VDcKLuryTz43m/Kzlt8RXY7UJ5b
	 zTn7TM3n+WX5b+Mx0JYaERjIxj7dEZDXvSeKD4/ub0Ex64OjFgoMPqClRW2kU00Wmd
	 V1gJVFVxo3ZOFeVt/kTrinmqbWBy/Abx3Al8UsRNm3iqUU85rKSWZvjTAzJHDmPFpY
	 7cZmGfv+ijxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D31C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 12:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167845230580.31722.9829589397734310574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6075cf64c78f1ead0b6d8984b638f2b8aee5bfe4bd7afc815bf2fe6db6b8bbac
Date: Fri, 10 Mar 2023 12:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678452305
