Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396ED2106
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bg7EWrCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CD4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700909896;
	bh=tInU3NRrz8ZyrdHXk1jkYc6ZKjKL62hOTWOQ33Kf+iA=;
	h=To:Subject:From:Date:From;
	b=Bg7EWrCbGkMUBdno+4fA4mV0d+tkvT7RfFs98UumzDWdSk/Gys9zXH/c3KEOKK0V7
	 MdilYTgJYFpa4hLsZPGrXXpnoktGHDYEJgAaUiQ0ojxThBjnYjpOImjj68wWCIvGTu
	 1qS805hoD4irl7TcLtUmsOxVG3YqI4Hv95BZmHmitTRKUIkaLQRv7GWbR461YksywV
	 LcKMMGwlcQehqiA9SuORX4ZivU0X8gwyHfpByAYXQLY2DU0y7MD4ZEWgO6OgqpChLc
	 uoVGU23oenJnjtNS0nji2BRS4ZczUtks7+KE3Sy2QESwtHYHykJ1Zb2+D+DLdpwCcN
	 KJ0zTXnlqD4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A18C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090989639.1672.7789996431458461231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e095d70de345f78f4de59243880b2abece05f1e5e62721e6da487e1e560801
Date: Sat, 25 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700909896
