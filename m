Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41997B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4F3C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664880653;
	bh=a2cWxI0GT70OfzRBNqdQ2ngfOkmv9h3t5MhWwVbmFcc=;
	h=To:Subject:From:Date:From;
	b=pD1XurIcjRMi2fQLYZ+9HinYsP8bz7eStJwHc8Mzk0bgDs61ON9UZ438+4ILDl35L
	 d27nsG9TEHuyiZQCH2HwAocmz3OaOSX3l2tNSfwKFB7mQ4LivVHEHq79RSHIZaSuKy
	 Kfan0MCT0epxFLmHGZ8+TRcaUM6L4BtvqGF/DCNcLYReU+CdEBNSBHxiQR7lkZJQ7U
	 KwjB6kTTSxLMyyxmhfV1JnV0wpDDo3MxONfSQH794lEQR88UFWcj+W5aT73h9nGy1g
	 rw2LoyBUcZ2Kl8prrmDi9j1a8ndmpEf9QA8JUkFNdHRm6r9+nVcWpSkuYkos3UkXB5
	 2IbmN1MYzog9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55688C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488065334.13480.12501230465796150320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fed3899d2ec8485bcdbf71d6adaf99d1188d0ec3f4553eb3f02de62901d1a0
Date: Tue, 04 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664880653
