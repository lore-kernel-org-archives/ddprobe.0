Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EB0163
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E2FCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671667887;
	bh=PSGA6gU/KJyW4tgEx82ONXAspgK7PSSLM7J8Bpx7nZk=;
	h=To:Subject:From:Date:From;
	b=uZE6vVcq+c4sD/qqaw04Xpu4hGa5+gvTXu0WHi1/Lfvntn90N2QhNpLhsd4z24neR
	 7y8XKnmP23CvHL8kkJ+2e1xvLMj18lN+lJPb8Gi7ka+Lhtk5qrZNL/8iFjDVpYe7ah
	 +T7QzbXR0KyJqwR+07ZLRi+ov6Ykwl1+1EH3bRJiiH2ranVX+vKNMg599r2w0ZQLp2
	 IhS5egTu5BRB+vCSF+X+xmmgBh2QR9fGKt70fOFvFqnOUqPUob3Fak4rs9HZdgWUII
	 dur+AiWc194voFJN0vFJtmbcVe9moW9ND8zjvAQqYXZ97rmJaxc6zx815wHIAX6fV1
	 i3V09WIINHxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F890C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166788742.22097.10124765704458220296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124c76237a385a7c9f44177a56f0728d9caebc5e095a189be9ce7d71f9120aa3
Date: Thu, 22 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671667887
