Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE56179
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE9EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661755852;
	bh=rHUXYDmGRKKCnB2AFunYorY8KtLzMpS4MvglbbHxa3E=;
	h=To:Subject:From:Date:From;
	b=feeU9dse7KY05skWA6NRG4yKYEtNVmIU/327itNCcI8Whs+KfPMNGSVC0uctr1ng/
	 pkAcb/gPhFXJ7FR45medC9L8SV58Liw8zYT4RtWUtN5bwy+VT26s8DuvkaTEPWInqy
	 VCzhxuuxa9gcZyX1bOB+ok6U/jaISTC+MsTdLRT9/d315AFrntlnk1iKiiCl4+iJXS
	 EBX7pN4D3qsYykRV0GNWdowIVU1Fu+XFrtXnhE4qRuNknizelTXptoa2Pc8MZWOsRQ
	 wsqlQH1POeT6PXMZM6jNxFhd6yFF+2A0cukn9yzyuCw1sKE54PK/G9RT1Y/v+FJ828
	 lrI9JS8dZgdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539CAECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175585233.32649.12483258397025456074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfd4d91af9470c117fc662ee460a83dab07697d75eb81a608b17e53c7d1d543
Date: Mon, 29 Aug 2022 06:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661755852
