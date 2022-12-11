Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F5D2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A398C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670787087;
	bh=FhjEgiVqVi1/yySMsScXRJ1nT/kkicUf/8LJF+fHFyg=;
	h=To:Subject:From:Date:From;
	b=RGit2bAuizDgXXaQM5YIXl9RtLdHLJ+qD9G+JLCnLtcHUaJPTIFa4XpOiuiFOmkSx
	 x/Xd/xjF+JcdiDVP/9IkbZOwJLxunVxckGzVvtVAGiaKd7y9NBiub5K7tt++p8N2a4
	 iXB7aZEJvk39OKUGIaF0d9WqQ5swxBNvPKwFZMuXoCX3fhGTF6D0ehew4eYxUPStMg
	 g9UADYuFjgfUpk6wMAM8z33m3L2S6ZsKJMyVrsTjR5y7utRekqk49tSiAcDjQF1yY7
	 E+XEhN7Ohv3QSg0FP8hMQocpQgT9DXE9aJvhtFAph/9fgRMAC3P+74mKO1sWYRB2Ru
	 zbmwV1kPcoqPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81116C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078708750.31832.9875138704379379977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbb688d2c1fe3256e4a076b6c5629518e94a5747f1e33c70c50f0b544dff4a6
Date: Sun, 11 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670787087
