Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF733EA
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 10:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1499C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 10:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675938665;
	bh=Kcv4WpzhhbZ8YuKNr2VygbhBuJhw3vCjqG3KIolCvYs=;
	h=To:Subject:From:Date:From;
	b=XrxVimrNiikjhUExS53hKX2U9BoiVbOwHRlZO55kJvz//48USeQzDBISU8wx5ZJYR
	 9CSKs27CcNegHoOgjfwSyrCQbQWHlYmCySSqIu4cxfMCcEFkWdprpAuTGu6sDAQMBY
	 dsljX6oM69cu8a9A5xzvXQLvMaqZBXzbRnTbiyRecDRt8rcnRANLRS9eMH82xx6pAD
	 PQLh/Tc8hBKXSY5/VZG11C/0tO7iGNHYMYnfIQ535+PXQi32c79GaAlSOTeX87OUpd
	 6A9Eu8fgo2qleBoBWgKovoYsHF8Jw9ZSa3TUoqx/yZatCw69reiKkGkPUlhK58iw/x
	 Amsc8KIM/bWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7114C636D4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 10:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167593866580.22441.2024662006635992384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b265fe5cf5acbaa3fff728ba6ad15baf67a78d11124d754b4b1f2f3746aba594
Date: Thu, 09 Feb 2023 10:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675938665
