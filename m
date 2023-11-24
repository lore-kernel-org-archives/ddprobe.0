Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D099455
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGXVX9/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F7EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700814496;
	bh=/3VNADwU0iJgcLfcXCrwxuytww+oA1IdsxdcfI2EGbc=;
	h=To:Subject:From:Date:From;
	b=cGXVX9/O1ytlGwXvTvaqh07A1lY9Pti19lnHE0t/Lfkw85qavyEW7jn3be+ktUp11
	 4d7fnei6COkL5fAvraJ2KvOnTIOy3sb7RyF2LzjnEQH3dJm7pd072S1o3VyK4ncPaX
	 J3gyH1/n4Gu4I2nKqdPCwoKgd+XAn9UElBKljMoedLVSKveRhH2s7/WUWVOrJmf4kP
	 UTqnnuBM2UUPMdmmeejFuY2AKzsAvV+Iaw/WwapfPuJ7JF/EwkzvS+vY8h0FQRvxsC
	 1YOBKJaWdlhCvDoNRako7TyBpVdhFsBMUD+VIIkggfOdgclTzQfj1osU3cv5LqFC3I
	 l5d/iH3gvOq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68543C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081449641.22607.2955829958677478723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93b5940005f142ae1ce2643f3e3b1a9cda0a0e24449aa5b22c7c9e01a7b8042
Date: Fri, 24 Nov 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700814496
