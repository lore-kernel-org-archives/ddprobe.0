Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEDCA925
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 20:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D2CC433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 20:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680553625;
	bh=NFTrL1eOAcSUg+NaDImPH7ptlho4SAt1o81dDcYWsr8=;
	h=To:Subject:From:Date:From;
	b=RnfWN7i4epQHu0xug+IyA+r3yNaMLlxPp/Snf1+rzQqMEkd0Yd7A7ojZS3aOQSdDQ
	 Zuv1qor+4eFLPBaCsy4Oio6b16G/HMocdP+qFMauJ32OrBY2rmejqxISL387WQ4bWx
	 6LWWvPR51VxYslfTwUnHte9iGWNQb2Nz0b61V5nIciQtVEJmg/0jvdr7Pc5RJUvzzn
	 sgUBt/NVj4P/Q+a+BcJnIfQSi97iN1ijgF2b99WxFTEUx9JVl1LCRqyeupLIFFZXGK
	 Auyhz0lqLhTa5qrVzENlZ8BhltJ3bbhJskzBLlJRwwLsvPnE5BNYeTZhrTDs7fIA7x
	 QhXKcIIQgNp2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C4BC76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 20:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168055362578.28984.16009521327430983492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131fa1983a35f8e4ef4027ce01e3785a98702258590283e170a28b6e97a5e51c
Date: Mon, 03 Apr 2023 20:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680553625
