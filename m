Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE96B568B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1D0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671122487;
	bh=HNcj6tLYF8pWYXN6P5SLhrrFZ8oXFXY7c+CmkAw4NTA=;
	h=To:Subject:From:Date:From;
	b=XsRLYhjx0Kz269YpCGigfu79dZpsd+/5tvxRcEqyQkMEI7NldA9U2IRs0tOkpK7/C
	 NIgmJdbFbdUlBsbOha5qelrRMOc1hJlG3dYJd1MESv+SQleeC6IbuBQe4bM2ElhwMp
	 LSytU7vIuHa4/mI+m/SMXlBXqWuWRvWRKyy0Fh3Pdtzn5CCel8/34+cSMlh1hhbT/J
	 7o24KujAAMMsO7kYKeqUK8PavO9UYF1yMKW8trMIclDoZ8stcphLkSQ4Xxo8ZLBf65
	 ygqlQI+tk9FBnAdvjws39hmwvUWt4TrXkxkhTx5nfF4qAEIRND3fC4eCdDT63Y8+HF
	 NtxAUgsYf946A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6785EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112248741.8854.7692185554659100597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfcaa28dc959ab2601dd4c8b12270a57f226649a5bba751c4054415cc9d8667
Date: Thu, 15 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671122487
