Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456D78BEF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F400CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682808366;
	bh=6BF8Sxcl/rgYWTs2F8sjqhotKocG1+oCW/EBtrxvrqg=;
	h=To:Subject:From:Date:From;
	b=ZXS7asd6UoqrroAwLyKYVUy0Pwvnx4iRV40q3lYYLEqC16t51eI2PLSnWGFXaud7G
	 VODFpeiq5UOKPILsVS+kjR4sScyClaE1BA5wAnR8bikmz4i03urx9sIUb80vP7YVgJ
	 kPYaplrpaoQOccEuyVebVH+tWZbq4vWJcZCeJwf53URFuUTmHI3PaoCRj089BIWZLG
	 HB9cljBJ1V0LBZnpSebCbnjj5FrPp1LGZPQap51swTY9NNZ13t0bH0ShXoN6/wA9S3
	 0DDWWapekLtLhOLh8mm+VvuCP8aRcBH/d293YDWFeyW7WuLWs99o6DPGWcFiBJ4tmV
	 uzwDZi4yc07BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F56C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168280836587.21949.6549921078917884380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf30e97f22bd04d7b5b926f1df3f6c2c9b8329adf21fd3aa592b6159ed4f4c8
Date: Sat, 29 Apr 2023 22:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682808365
