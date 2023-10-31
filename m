Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48129249EE
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNEXh4Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E89BC433B9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698788896;
	bh=CusjXDAsljB8NhMoTVowjWQvRFvbpk8LmXH0whIA90I=;
	h=To:Subject:From:Date:From;
	b=XNEXh4FtNGtrPQvpJVmJNBL0fQZfzD2Aa0K2b3Up+t04UpXdRumVgbjcZU+aKTveo
	 2/QTt9KxwmrNtDYW9Ev7KvYH8D+TkuJOtbUEwBM6rqXC1CGjpNlvKt94sz7VTddIJg
	 RbscKl4kdjMD2vvPpBOOD0QgOIyR3dTV6SDmca/D+cn/k+hSrPO2qkGJ21dAzmt3om
	 q7zLY8EQ6T27/4oVUkU3KPKsF+NykEdZ6pmLK4E/0I/KieIEunfYZt4xYNB8RurPMv
	 7l3eGbx+0Hr1eJFSpMEhw4Z2jH0QoBpKyoIxw4KM+hfSUbyiGcr5eMQ98JGznFRIfC
	 HjujBaV/Fb1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81F8EC4167D
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169878889652.6811.12201294020450210690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419b7dfff1999ecd604a53bed7c69c45853736e448912eb32a2ec63886ab7d3d
Date: Tue, 31 Oct 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698788896
