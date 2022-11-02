Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44BA7461
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877A2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667418054;
	bh=ticEgOa7svxFMIgWESnVN/rVtTeZHSFT5+qmdYtsA6I=;
	h=To:Subject:From:Date:From;
	b=UPIFPKHZul94HAhLWIFrUVEbbAT7HRk3dfy0nKZsEh27HQBQ6V9Uj37aF0l9O+xpi
	 3rjo76zBXn14aYORAn/r85U0Hv0EwVeY6N3Fwq4IDiPJ8ssN/53894tYVJpBL9/1Pk
	 bIBnwD600itod3NeAfEB92AkO77ASfEGVgonVrMbnu+JjLprpH30A0/EIwRE8jnpK5
	 v/zuWAd0LmC18bjTaK4ogcj+Oood7IIhpJXO4DrWGpLGb5axiaXZib/8rY1LDRKx/t
	 JNIF5qSIdhTwcTPsDNoXBJuP/Tew8NKBQSeHVfgfL/yJfI8u5PuW5DvS+rehmLnJPF
	 HLeGSgfgUkLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA8AC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741805443.22158.15932612114696393422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534f7a190f80b385f8cd1e8ca2a7d26bfd318c18948373ee588995830bae1c60
Date: Wed, 02 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667418054
