Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CA47B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65891C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666903854;
	bh=pyQC/WPcmw2SSGz0tjn6UVbhB2s3C+vhUuks7jEkcJY=;
	h=To:Subject:From:Date:From;
	b=cCHRYCxTjZ7SQXupF4pgU6gdQR4ZSwrt1p/lkd2gXWcQkK5Gc3XwU1dFjIVwjdRrl
	 29GMrI4LhPfUri83eba0OBmfOB1ddVcQQaYyUGNFOooUVdyHEY2iayGyaciJRtDGmc
	 AfUcXVf1bWi7sTeDZehHFD1rqiLOpcXYnoqk+b+Xpv5OPLmetN5aJcteYFzZ90Wv9V
	 v/eBgvrMN+n6+IbXCI7wh/l6xbbCBGnVDU1QtW37d6vnuBhAW9yifgZixcuQPRt3G2
	 7iFuYNiJARbdQXFbjUjnjI/2Zkbrc3cziUR5PslxfrA5mI4MMCxumJK29lm/lM3W/x
	 /Jt0SW6zBDB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51934ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690385432.12914.326563584634823141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e60d9d6fcdb1d72a977218fbabe3c25a154301d19b02f2d1984ecb3b0090dd
Date: Thu, 27 Oct 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666903854
