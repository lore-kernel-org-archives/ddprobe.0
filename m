Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71683A31
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 15:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF180C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694531648;
	bh=EsNHTBqTD1/xZpjTPl9ObFHpSFge1sQweFQ4EDhDQjI=;
	h=To:Subject:From:Date:From;
	b=qc1Q+hw98SXEQiP+2WSc+TXhBE64fBKtBRAtSHppKO3ufXQxNsFHSl23AHoqkJlFf
	 /qOe3IW4idaqec5Olaa3FiP/TNrZx/4ETKBD1WOkBdrUNWQiERI/HMKyMbTJH2KCSs
	 3RicIiNjCj/NdI/5VCEvbQ1Ir4h43dKZIAkxfG9j5WSNQGzCFaic8p2oTaqgqyZKbe
	 iPXqM4pQ9TL6Z3YzcFownLsIdwLlyX+45RB2nUB8PwJeoJZ2dsLtgNnwW/5g0FzMmz
	 Agzu017cvI9dtYu79bJ0fRytjjqRuxF7XkeBckxMSVrYA9Q29ohUFrlS26vg34woTg
	 bROnmmBzQOtyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BE9CA0EF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169453164873.2312.5166358270181600478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac03eba153aff9f896bd7c735dd83ab69b8e68e197d9b8b44424283cc9eed6ae
Date: Tue, 12 Sep 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694531648
