Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5CB1397
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA9FC43143
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665931853;
	bh=fn9FyO51lPuIcqwhBVmD9qojX1+RsCaRUZjxl3WWGvo=;
	h=To:Subject:From:Date:From;
	b=mQ6smCvSbzBLDKhFZv5F8xEJxNSB8VeLSTwVtTuF+YjczPqzWL3bVwEuyfdRn8Ign
	 wzsk4e64GU8gewUsCzvvALpqCcVm41jCAB0CwsjCnVOGF4pHDukegZTF7oTiHg9SgG
	 USKMIqFaqdLVAKcR1WewoIObndjRS+0rM0+MoGkWjZ9OCMq8H6nck4raA4OIv91zAW
	 DFGuOTN7K37jBaRkFfMpw5sVFhChpe2HpV1KLn2fXFwE7mdccJS7NjwDQt/lzH21r2
	 wa9biImvlCrWND8MC0iHXD3cmowGf7y0ji+n9tFLl7bEqECGakec1Qvm6lKRkuftdx
	 YfmaoW1dFipOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EBCC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593185332.21196.10867989415090710180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd556708f546d2e534d26603891497512bd1afbc4cd09f5080af973dce18280c
Date: Sun, 16 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665931853
