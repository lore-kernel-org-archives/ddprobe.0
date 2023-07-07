Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840D9D523
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA6EC433CA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688743628;
	bh=GhJozIeNPQJudTGEerN7sgARlhc4fBRMnOTPOw4k2WQ=;
	h=To:Subject:From:Date:From;
	b=NDmp9aj4V7wdPVqAf2IGn0ACJGi9hBkk+qjUKDFQbzz10GC8TYc71ksCRgs/EUHZ9
	 oYA+qYJU7tXwdkMonun/wkUObjnaSXhDh5q5O5iRMHJEhkM5jRxkLJdnjYZFCBZ2yL
	 y1YrH3lmacBbJNQwtYeszoKMQ8yIdfFjgbEdgmQNkbji5PDfvdxITi8SIVSbWIoGGS
	 26+frOTGDzlbooUyM2eXR2/F3GUPvKvgKaGEf/TNywDNLTPP3trOH7Qg/rnSKvwzX3
	 ixlnk3GmaKb++McdUfUrzOOcbTIF5PVlB04hPM3/3so8jDI1SzEYloxAD26jdIwy3x
	 5Cwc8hlMM/kUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3EDEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874362869.11205.16840979476992867537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af151fbdc7fc787c2a7a8a2866ffcb3d57dda08883e5e97aec382a0e42ed8fd2
Date: Fri, 07 Jul 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688743628
