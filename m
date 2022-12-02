Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA68C7486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70835C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670018454;
	bh=nU6dVKTr+Z9nUivAG7AB4xN4hJEzrHvQg1dDWSGy2w0=;
	h=To:Subject:From:Date:From;
	b=OlGe2szKqf7ri0Pu0kFMQ+dIUhu2ZCm3Q5vgcHFa7qCMVMsU4Hg3qrj5BXcwapgPC
	 Osch4icV7Zyi+fXiEEXry+bhUfQ28/NsICYvy/e8yDVoUp1mFEkYEcw9ZKTuo0dWbi
	 fWP3x4CbPBvtPqxqON8sNU3Rag12WNu9nzJo+me9wgYzvrzTMU9rBhLVCW8fKeBVEZ
	 4HPZlGHNjaxyIyXIIqilG1+GJ+41cBNYtz9IlQ9dSxC1zQDmE29pDcOWu/8uK6Pysj
	 7syIWbrNlXf9O6wP7eLGTDCZ7oTXT44E7J4TsSfj+Np7obG6+78908HcioYtG+yQpP
	 BTpGbisMYi5Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55525C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001845434.12668.9549698083556756967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21eaa0f0c52092509747b931004ff91f25ce9241351b0bfa4a3de852c503f3c
Date: Fri, 02 Dec 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670018454
