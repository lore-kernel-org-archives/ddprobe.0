Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38B37E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A187C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666664453;
	bh=ytTy1+U7wWL7za7MbGvkmE1txNbn8lA+O0r23nG5nNY=;
	h=To:Subject:From:Date:From;
	b=BdjoBC4lGAeB/hzJe5Lt48QPg++TVr1pel06hdVhKFUVM5xroavPxswZVDxaPuiPD
	 d41Q6cm1gzMOqTPIZtv4lYgX8NZaBfPLqTWcVphRB9WubE+/LTJwJvFI/4hzFQG2mx
	 MAp+sWBbt4wKd8RvfCRBdbXdITd9QOMDXPdmXIW6+lidjLVf8/DJLb/+2Y4UM8agbQ
	 j8zww8SO94GIez65oE1Gvg8UAxfZF661gXd8gepv6UrW27O+VBHdTX48FczE1TQp3U
	 MmmJ3VAICcjkC+SS+FpGmMWbXoeg1fTsw24A2/ENJ6qmTsYLhH+QiZbIYoDIcPTlkj
	 zA4V03oxt/bLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551EAC67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666445334.30428.14790827802853367471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f80eceeb3a577ea742753cb89041e8398f8ab38f4aa607f665300bc155a5fc
Date: Tue, 25 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666664453
