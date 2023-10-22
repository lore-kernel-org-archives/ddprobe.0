Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A832F51
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFPldDtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92426C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697975296;
	bh=qSM+eHgG6u6QceqiUcF51hcI4yolxO2PYed91/iA8M0=;
	h=To:Subject:From:Date:From;
	b=pFPldDtHJ9iDtmcRHI/5BG5sXP3BJbh1+JgZZtLlvZHESIR6NtG+j2hPR4A9q+Eil
	 N36zG5xR5tIN0NDSls2GOqGjc6JZ+FAyq+hByIbkEGaiA9alK6ptAnjt0XpUN44AzS
	 tsnq9h84PW9L/SiUXRduA2QPsIDDgz//HOa4ti2nnuvB054baNHnHySOyJMs9UcV5R
	 EB9tVk6TIISVyxTCVooXORKcHFRk4C7TnRF9xn9KRckicipGDfVCUmTxa602zTwtww
	 DIjxof9J3vVasKPBRrzc0ZYdKp9iGuAyiaMe+HGS3dkhQkDuTwebgj9dciio8nhRKh
	 7pvkz0wZ+0ByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7129BC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797529642.12060.3747315890829697224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335f3d87d8d7bcf51ce36d0d85f1d2a3804fad76d25aa41c6fe95b4ded3e57c4
Date: Sun, 22 Oct 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697975296
