Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B173F7E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63E50C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664269253;
	bh=SXk0ab/ibRvkShwwssIqW4/WwvumF/BaRZRt2Ac3HIg=;
	h=To:Subject:From:Date:From;
	b=bTiXu4TFdP7rjGO4tPyFmSVbMHdelRXUmRCVoZfS17NDErRKyg1FzYd3Od/HKb+xC
	 t7uxZQeu0MQWclaYvkZdlJcybMDnS3uUomEVPklCh/GhIcNsAQRbW2dkdGPm4ENXNG
	 yn14KEgqLi7dikyi41nZ4oTxekppssHTx1TslYJDNNLfM1J8WJtJLh19Qe4JNEDoxj
	 0eveiw74MDgREvbFhTr2Dd/OXGHedVFxbXX3p8q2ui3QebIsbB1VyJDib61IE3FPDa
	 OAaOWzAXT9izhzsPEEG87cvVQCBtNBUhW8+vAhcPEStK9X0jMj0o0bg7OARKRURp9q
	 km5F64xLXbbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3B8C6FA90
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426925331.27133.8079338215475627950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f61cbff9ce129d83c4da08b20767e1c75e4916a148e0cc0691bcdc8e160b5f6
Date: Tue, 27 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664269253
