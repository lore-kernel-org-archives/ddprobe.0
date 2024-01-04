Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9318640
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYlY87mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A31BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704346096;
	bh=L3ewnzDvyBFZkrNiaKwkrcaLybphfSKRg/eHMSIFXs0=;
	h=To:Subject:From:Date:From;
	b=HYlY87mi8jl9FTJOojZZIIcw8n/e6rkR2xPu3BZf9sQM634N7NM5gOYOq9awvC2Dj
	 ie68SRA6xRTF83B4K0pyFH9ZYF3jxYA6Cc0wb7j6gA8X6bG3VnWIIl6ckKIpP+Nzug
	 CdtowC57PobOPg9Enp3fBVLwmmgt9gf2ru5KYRHL6wPgFu04cz0GZJUzqgDqpAV9E9
	 W44r7MAsAvmuGEFsZ8Znki+UiHElUJe23Nkn3QVpCmsTThnvq1eGwmH57kjUdFAA5Y
	 QWC/NKldlKWfdpGtiX82/iMZqm6XMPhu8WG8CVSkITWFdcDRcOnkAZyqBFqirHKehs
	 l0OIsktDQGnkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77977C4706F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170434609646.32580.8564918175666862127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173421da162a4c537f2a7d6902621941fa0578e833da7405cc46f4b497fd7477
Date: Thu, 04 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704346096
