Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77D1374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83361C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661839253;
	bh=ri+mpfLZZKLFc8Ff6Dzjl8DC+ySWRphbCDMfheDCkcE=;
	h=To:Subject:From:Date:From;
	b=Plyeg5hwGR/7P46kKTynL8hWLEtjXBePsqSd/z3nC0f8knNhTapP+8jQYtL5SuJlX
	 nIMBag2JAQEUsJsHVYbS88I7CqYgYNg3fPLG48TaZO/+N3aACJ8qi3gzJhRuFt5ZQs
	 CvPYs9AiXsQeSXGzUe5sgYFhdKWtxtFUJ8FEDvjtU4sPLkn4Isbr7Wz7/icKuPCW1B
	 Mi29aV2vlHxkCy68NKFyJiYXufb5Amqprfm1vTtcV0eIeMfjhc4xwFafMikCjWa4De
	 mWFXQCAy33E9CzgBsy/rqkp29J1+YjaA3ZtUCuYWMCSAAruMQxkPWBXDta0in9wUtt
	 KVWI7Te5RxoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB8CECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183925343.23912.12858634952222834685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e6c47f643cdb32fc371d9707aa184c320243ddaabe0b63afecfdab3263babe
Date: Tue, 30 Aug 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661839253
