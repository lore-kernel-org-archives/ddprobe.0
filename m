Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1FC7F8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xm0fjFcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82271C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702948096;
	bh=MzZp7dZTbBgClc7cKnhtc3C7B8PSpogbmeQ7n215ZWU=;
	h=To:Subject:From:Date:From;
	b=Xm0fjFcCtuTxlM6U0jwgNTUZnC6SnDWksb8fZKo1WjVIynB7zmYDCpJ/eAxL7HR1o
	 SrMMd40AMAPGHeRCP026O/EGraIAdLLm8wqiGfUrPWjg708sOU7EC2wOBDFttEY0V9
	 04OOeZKfseUQKq3kl3LaAPI6vjldcxOWSlyQlsM8CCNW+WdQjSsoUUWDtKl6/MckSy
	 uStg9dxvmuDDwlBYduqDXewb3vX86UEFUQ0sAAI3INEdR98Bm1+4AXV23pRH+JQWXh
	 yILhZYrUm4EM31OFfGwS9QCK/uKUQr6K5PZ0zviKoZV48ksynH3GDRsUR2cxz0mGme
	 EyU55MJ9nZcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DFAC35274
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170294809637.16676.4357737747766464974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bcb66fffca92be45f26dc6643f9a69a08149821c3d30d539d099bb3624a00a
Date: Tue, 19 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702948096
