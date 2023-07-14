Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA8B36D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF46C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689295208;
	bh=1IuS7BawzZ4cy+ExiF/WTsI9mmGbcE36uQeA9AEUfeU=;
	h=To:Subject:From:Date:From;
	b=tES8s8OUtP42OE1neZCRV95YcPHDtebj5laUiMy1MBmZARpi5j1PX22dZSpUIstFy
	 Ar/TJt7OAchtIhsb2cU+yoFT8TwXhew+WdP0hTWLvQEdcnshrVHz1D2HdFE8nDrUSl
	 fv8gz/VGnq2WiFuinohgcszSg178GOzZTDu7OS0XMHcJYn0PRv9UwHk0RBZEv0WIH1
	 XexmSj+JlC7zt1Hlt8I/MGihPLkNP6MHZFwqSI/OmFykMBu3Dxw7wE0C7LAkfSW+BV
	 UUqdVtKyXvMGgajk9Ry0stasCaQtrd1vQesw6O5kSkOgOQyy+Mx90ZcBX011Ina81K
	 iRkaxPOGZfkyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06DAC0015E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 00:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168929520870.26845.17379930922467872117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3828c531343eb661833009f92e998f22fb45129a844408ce029a51c75c43f79
Date: Fri, 14 Jul 2023 00:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689295208
