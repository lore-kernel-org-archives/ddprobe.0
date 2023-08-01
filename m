Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9D21F93D
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD572C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690881128;
	bh=FMB2R4cRUDtpQpfLQCjl4yCqSAWHTrC6/e0cg6z+FE8=;
	h=To:Subject:From:Date:From;
	b=qtJxYV9eUwKgoDNnu+dweDWErgwdKBCjaiv5M8FnOBiGukYCKfdXf4IwqR2OHCjv6
	 Gh+xB3Y4bG1DRRl0EtkT/fkpro2IUJcC6EJxW3fq79PbNdL33gRAz361VSFGh+iARZ
	 v3UdHfQrTebaW1E5JKzPI3CdjIZNRoG2zFfko9TF7YTBp7HyeTjcEnj1ZVH7NDlFzT
	 usgmcNGJojXr0eic9sXf0q4kBXWiU5wYtk60YmYG6PImDKtlcHVUUW+eiAHAUU4/XW
	 yYXh83Rq/ORrsqnSVlFg4neKjVen+AR52EMGaN3i+LwAq1/Qgdrzg5hQRsoS9C0TKT
	 WlPEXppfVxkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3006EB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 09:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088112872.15562.7855982772824910634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6e27fdeae7a2c7598b936b089271ccfa241bd2d72d59990ffad2fb114420f4
Date: Tue, 01 Aug 2023 09:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690881128
