Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695023229
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 108C3C4339C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682805366;
	bh=T5i5jfVVJ1Mx3Me1ILfRkuPxWHDPdXFTHE5BpKJJm/g=;
	h=To:Subject:From:Date:From;
	b=NRf/1vCRePE39YlmMNQf33pElJWibKNjUUyf8kmVBWuFBgRUUgWqMJP0rCASZptPy
	 3BBHTYNvq7I8xBD5TZFrJWTdCdSRPjhnjCdom/sgzLGTDWsOhMglHnHWuZkU0jT3Cs
	 q6VBK05Pb83avy1i/oZDFU45heUv5JAKcdH+GrS/w1xBW7nIuRZCNxDUe+1MWW1ZC2
	 KHeGp43gOzjFA+d/jX5TagYVfPR3wspKPHLLRLEqlFhzqPDSpDYhpIMARyl47B/MU9
	 5feEz8jLuDUEwAOtdRNy/X6pwMyYW9QwVcHgwILixaPZRmPdmsUis6djf/fantBYfB
	 LgGz1quWOQ6fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E42B0C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168280536589.27078.13492171560746548490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54016eb9e52fa8b1ef6411cba01138ce47a417b7f03d34d4780af3fbaa56f6f6
Date: Sat, 29 Apr 2023 21:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682805365
