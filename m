Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93917E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD7FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671507687;
	bh=r5Mp33E8qHm1e4FlF0dX/rxPo5Xu33Ho6X+IeAIlMlE=;
	h=To:Subject:From:Date:From;
	b=lOQKwr8HcyxbvO8gOTdjS3adk7Hp0nA1hY43PsI6UwQ6wY+99lMYZn7Lb7Rc5Unyj
	 4lfriymW2Bqm0bD2XqKLiNHoa4ERcWuCYtg268ouD+kpnIsl4OD93hg+VX3lZPqvK/
	 O+NIFjZIPJiWz2QCZmazAxivh0IvIDwKQx5RCCT7q2iU2INPCssxUSkHHB2WRvb3L7
	 MAhvawTKIym49a9u7NGcrhUG3gW0cIf5sXZj0epQSVTifAt06/Hp+CcE41mdzPomLr
	 MdpVe6471y4IuUPTIczRFTh2BaZy4UKMmf4KkVyuBWH48P1e7EpQZk573g5RzCaEOo
	 IGNGPTRm4gqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C64C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150768739.1674.1834997792852551402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6ff60c70969e8d101d81207aff9e89af228a4bfc4bab6dfa5909364ccbbb1e
Date: Tue, 20 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671507687
