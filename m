Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B3E15B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88482C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672463487;
	bh=RiX155zZKXQezpkyhqFPDQfHBAjhGUXujZiCdfUQ24U=;
	h=To:Subject:From:Date:From;
	b=qf72Hg4xAcnwuyCaPP9o0SGP9JwVpJ31fXDtPEpXcqeYCPpveoHTOwaGPxLXqhIbr
	 RnqiUpaQIGKeXjClv7eoWIYywiBczB7Re5DOd4VPUQkszay3yJtLUHnWZOdzNZGJ4d
	 8N6wTkObztfkOV4guHtSHaagAcq9EnvVFyp/zlKhfIUIvgj8mbKJuSSw4/SpCMtDCk
	 nocMrCAxblLbTsAPS4c0XFT/K+QHkbgv3OmYB90hKHC6WPAH1mfLajukpPcxDG7QTi
	 jYqr8Inr6gRuWB5kqTB4iJ1c2XQb3A15fGxGswUYwL7cqPzFd7wtfZs8wGrSboV+RF
	 YMKO9Ho59jQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DA3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246348739.27978.5460428942642988217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b656849ec3eeb4ca6cdd318b0f12a5bbb62f6efb31ee043d206b8d8e2bcf08c
Date: Sat, 31 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672463487
