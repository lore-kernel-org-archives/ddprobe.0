Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FE1BA28
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81851C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669755654;
	bh=4F8UMlk1smVYCj/FnhslujDRLhT9yj9zmhNh/UtD54E=;
	h=To:Subject:From:Date:From;
	b=CqTCuRGheDN4JUHh4696IRQY44Q7SJTx2ruQGYn9xv5SSbejekWd4T+N5hqScN9Q4
	 DjBbAzexNLCRUPE/GclIXb+1LkvcLGxaEPqZoyzxU+9qOo8A7cmxLRjeMF2ETGT0si
	 4GA9kC5Jli7V2XRoDukymuvkKWYw2Ze3BNpG2f3KecjiUYUQNjdPwT0tj0vbPnYAvE
	 riHa6VEfmAp97/3JZHwhyyLXm8M0Lu88IXarr6tFY7GletghqXeGmPUgwbHLhSrAj7
	 4gmVubP9aMVwRlzFgTFwGWyfyY8UQ5Ym4sixZcjPo8Scll8h81jCvOTwYMbOs4z1Ge
	 mnRXuTzQOUWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C97C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975565439.14756.12315308677441176785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1275bb2cbd732fea4759ab1ba776b4138f75fb83f60cbcf935bd59ed5ecd2826
Date: Tue, 29 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669755654
