Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71C48AAD
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E60C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668541854;
	bh=p111QwrRk1zBofSRzCSP2Es0/51fDFHZPA3DbaronPo=;
	h=To:Subject:From:Date:From;
	b=KjKlXzxzwWD1pmjFERQDzNonDAa44tqdRY2OogGDW3x0HCrMJgTrSwM2sxA6HRRVN
	 x0nqofVSf7UlYdvwdf+AVf2+1dCTkW+g5DApXpj9JXgyl25g/KS/MlagkfStuYEuUT
	 bNcQ7hnAtwduzCd7jdJLbb4W5dpVlGCJ42hAJND7dAdV7zqOO/IN3BPc/QPLBzFYJw
	 JSxB7aND5wzXe8cUSUkib1vi+ob29NgPwmrTDB2BhitOlJQbWM3HoQ5Ye0+NuxM+Gd
	 At8UAEmMkElm575UgsWL6ODCtLVKzNxofFzG01P8zeS8MxQCOFeTgtSdVmqA/4xTs8
	 Hb+tHfvJ5IvgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD0CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854185431.28101.6052116752520357164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558318c2459c20f79bcebac626633df99a4aed42d2f90dd84011da1e0699d3dd
Date: Tue, 15 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668541854
