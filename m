Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D543636C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A98C43470
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668831054;
	bh=+YjwXvcqz1HITL2L7YxFqpUO40Px76vxuc+DBOAQkDA=;
	h=To:Subject:From:Date:From;
	b=abyADM/1jiQlXiHG2ZzcvUTxiUf/QfsUbzNx7k58puHHvKVyiCvV4JIqw8TV2p9q5
	 MnsqQI8TzIQeFSltunPHlpYHS2JvDUpghv7z5o54ulmwSG7rXY16T4D2pMEz0AyMMa
	 q6KjlqJroUC1gkasnY1QiumxkAcXCmeuTzvOlbKJxJ9V7K7+6x5RQYxgsAhzmD7zkG
	 NmmwPF6Id0ituqi9P5M3fF3acWv3bVxkV+54nr1vvVHveE4P8HSq3fY/W4TcuXmRw5
	 A1X7RdAxUC4OcKLxhKKyjdKbDim8vakMAIFccAc+HFl/SOR1aD6044VOdlBj7c33+t
	 ofNddv+Pg0kTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60423C43217
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883105438.30821.5999617217058720373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ee2cf7d95f008b312d015ff24082adb59774f6720c0799cc792a38d139013c
Date: Sat, 19 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668831054
