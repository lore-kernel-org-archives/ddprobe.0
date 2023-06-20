Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED97399
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 00:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19C28C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 00:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687221129;
	bh=R+pvbAfW2QQw2c+dF02idBWnsE6G+u5MJ1ZaKVysmtY=;
	h=To:Subject:From:Date:From;
	b=Lb6guk0TPIIhHksILVnsPbbdJzJg/Mxvle9OL5JDfGjaN6LSgf+iVwR4CmGCahaDn
	 zy35uIRDC45/+d0qjzIg1Q5XXmXYqKIFemxtUcBwdVjBJD6z8GIi8HWu/Vp1iZFLXm
	 T1yxIR/h8+mvhDja6y1qV/GCQkG+E1I2Q0sWSkMD0i6uimMozlX1NvJHOl9iXfyXP4
	 zf8kgwJ0j4aXhvZYxWeLBMsSF4b61kziiCyT4UxH0kji79NruoIUEyEGGPcGZ5dQWy
	 fWtk7768kk/yAIzqhrFkdJ/coMk/uh0OauXEmC6qMgHp+VD4kCVUGdpQxwbJNLdSco
	 i8Hsattvl8kBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAD4BEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 00:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722112884.25451.7470746168037133810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768e75a0c26c6d325424747e6219c6f2e1bb1074c451f779d0d02e83c6c80f67
Date: Tue, 20 Jun 2023 00:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687221128
