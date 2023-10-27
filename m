Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24545374DA
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGiOhBbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 901C6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698420496;
	bh=F0TARQQi5VGOtKfQ9I4YLa4dKcSZ0USsJmkrI5rHC20=;
	h=To:Subject:From:Date:From;
	b=fGiOhBbq3TDeCJ/3+pGqYeTZRvNHRCVH1r2c7sMpLgw7/57NciAmHFTxFTByYUzJP
	 DOskz5uNYnOl5oqLLaqPa7X7qiYqRxBLB2AX/50mv7+8jirTnvPIdSqzIiOJG7pqgn
	 LzYQQWThHi+3GpWODzI104oCm2MptSWx13rPRZWVSvDlN/vuurXwB0PErvOmkm4YD9
	 fd8VgxsPzwajKKqV0LIREQ33J4F5UZghPyYZrLvy8OBwJVdiMh0sE1/cjCKHHijAle
	 e+k9oLVihjCa1qDV7KD4S2iUPhDIiM7r9SRKi/0smATKA1DcFq2zagh8q1Gmbq+WkA
	 S/FttrxI4gZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713F1C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169842049643.573.10928286211580119337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2ebcc555dea8639c41894e1d74ffd6d036bf06b6268df4db8e5a1cdb3ff045
Date: Fri, 27 Oct 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698420496
