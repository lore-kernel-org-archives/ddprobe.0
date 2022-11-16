Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99DC5CAD
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686A7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668603054;
	bh=Wa096wHtnGZL4MZQOXj/l31HrSvAzUndWXFkJW3DyiA=;
	h=To:Subject:From:Date:From;
	b=P5RjdPveQhAUFf6Aa0t+OJjzh5TrCJrVGObJPGbEq6VG/8ir/hO2L4/byrUk03IGQ
	 PRlAotGcxFJcJcQonc3mAoAdPRhDcXf1gpZ9mcMcDurSeBXlhRqc+FaeEhfzQgxcTR
	 4aomqcFFy1Iq/ZzOKVNsA8p26d1xJSV4D/XtOwUehdGeOAEgtOK89J2C8QA4AWEYQ0
	 +pQH5USbe3dgqDrqtX0PY7ZneYOk5FceKwRHHvA4dgNZox0D6jkLlie7uJOI9Fc8Yj
	 d+0nw1SCVv9FJiV6T/06UAyP3dJkmkTZI/Q5NvRzTzL9AIiVGvWz2PlTx4n7rAzvt2
	 DxNLkdwZz+pvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523F4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860305432.19927.6468869166916578569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc4cebf0eaa1e338a362fe166254c681e6d69b7950fe6ad35f528f95f3a2685
Date: Wed, 16 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668603054
