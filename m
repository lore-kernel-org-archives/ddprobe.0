Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F0D1FDE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AACC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681083065;
	bh=z2pPOJCbKQ+9UQAaOYikNa8Gx643xjmnhn8uGRElzdw=;
	h=To:Subject:From:Date:From;
	b=Z2oWeifUBDGstTqX0YtzOi7OOetr+qr2LKWuMy3EDikLCem7JbYCF+PExepdZOTdD
	 0zDJcUrvV5TK63uuXu3ksWDnN1SVqN3xR+qMz1q5CYHYC5c91q5j2ThCc0c5BPPg0o
	 raQ0JtFi9j2HMnja/PFxQYuTMod8aE8uEnvkVm3Ukqoz+1VSOUw52jJLHbTs7pqHXJ
	 IpYsyMe66uhfA8IQCOMDWzm9XURiqT7btOF/kPuPcd1YwTAwK1ihnaspiBQGWUOV9n
	 FL3tjMtJnW/GSbeBdF8ELdaZnlsXj7meUsTX4R8yKT7i8eF1jpQsaoAdFO3eaPsuv/
	 5ywrKu5pF+iHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09A0C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 23:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108306578.27907.2582574570457619932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99820647af9774861192d3a6f0b27a9c8758f1c48665f14ddae86eb606418a0c
Date: Sun, 09 Apr 2023 23:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681083065
