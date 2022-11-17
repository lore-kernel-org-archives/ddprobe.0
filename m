Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A098BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF0BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668709254;
	bh=QBWHyYks5s6sa5PM0Om5rPU8czCZFXooN+kcd7/xGxc=;
	h=To:Subject:From:Date:From;
	b=tZOEHMwktxw8MBDMrmcD0mCTBiWTWSOHFAGcg/G84KCvOB0srelArfpO/VlMTtjcR
	 yllF2GMvjhq6ccQ2UFK801Z5TK+SASJ974NHwmJjHqisuHdCCqa1ZHPmdUeNIuAheE
	 tKWL0K5q4RVyo/kwAU2y6abzd2MM4DrQ9yHjr8gINLajIQUMDcHersUFD31TRO8vec
	 HR/7PjOwGvNR13DcjOsGZD8dlolAi17ItRThcVfa2GHZaxjweO4azfH68kYVYp9UBC
	 yxFjp1oxljy77zyObq4XZMEukXt2d+uIDN8vMwAGcWdjKuRCAsT9tL73nqhr5voWLo
	 TFI0OW2gIHxKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 708B7C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870925445.17388.7286211400290047998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02ca6696a05a4245ca412f748f3831cfce44792a4a0cbff23b647d3a14ac25c
Date: Thu, 17 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668709254
