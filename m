Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C44133CDE
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir3ArBie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75789C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701175696;
	bh=ivQnhHHbz2ihly6Uvql2tCGiL8AJoy1WiH3Od64xdro=;
	h=To:Subject:From:Date:From;
	b=Ir3ArBiepciMo5ZaxHZLmusigIbqoQw5lrWfIUEsb3iW+XBCuOK/c+Vg5ra8h2wub
	 4ol8dIOwQV0jCEyAPS2QyXGyx//5fUdANkU/x8LOA9AVCCN18xdg/5Wi4Agp/Eu1f4
	 hK+8YpNSyyfsbLwdOOy3CyEC/C33j9JuArrPLbHoZuhq/ollLNXTljhx6GmfPCzH3j
	 4n9GdgiCDPRXq0mWd74TWh9hRm6Xxd1pQbi3xNqRdwKRLCTzbUQnr1kJ4REaHSy1j9
	 gVJOcNvcO8ChrSefxChKjBMQb3n5MRZSbwQu7Y8Pc3BfsQkfvZafuFCEhHXlqGag+J
	 99AJDD4WnfxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D29FC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170117569637.29563.14542684114513573694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0890d62e84e61593bc92d016ff089f039d4cf812be219823cd9a9800d78ab3a
Date: Tue, 28 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701175696
