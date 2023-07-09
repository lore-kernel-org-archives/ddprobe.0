Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C20C8F9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3829C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688925428;
	bh=QgKRDhn/FjgOj4UxEMiSltH0YTOh+NXSf8A5KX2sTfw=;
	h=To:Subject:From:Date:From;
	b=kV9KEcM0D2+pX9xFqMs48xm//FduvLMW64pkocgNHtLdJT0WQQLW1G5ztXkF+KtBx
	 /AkdsM+v9vbTizo+rTPwIdSNofg+WH5jkRPOPENzCu4YE+lXrOebIq+/T+5rV8D5xN
	 prY1t4w2dcanowYPXUWNINT7SBAambMymBuMUptYCYtIJXa7VKESPkBKJKaGVvWWDA
	 g224KLUaVn52a60eV/fNQbaMvjOFjHNg88stc5wznKCE+4OpniZyJBgvJptzqFH+Lb
	 44pXHO0OotWiIqdLgEbL1IWu47M9nwst4xZNoKkLkn0gmfM8uiBgzA3ToDzqP/Pvgo
	 mU24Cnr3Ygkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1004EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892542868.349.14327881996276701235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257829f1d1b3caeb40678119e161797ced76f10b03ffb0abf844f27649ecae15
Date: Sun, 09 Jul 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688925428
