Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791515B2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2745C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688789828;
	bh=4kQS6Yl0S9bHWaUtfjwF6Ab7XQuWcyxKS912jsxSF40=;
	h=To:Subject:From:Date:From;
	b=u/8utclgj8D9IhmjkoM6fjbLFZHOpS9VHvkZdeqFPPm0U2veZb/l38oXycfqYeqrT
	 Ce+0bl8MI1b+y0GPAIjCSVdhl3JfVmoK/0yzAyuWUWZHAW+2sfM63nZWc0M0P1V2et
	 Ai/4S4PID1XheQ8MKj/d37BF5kBdnHa228qtaeIuivowexHU9aF7aBKDZC3mJ6Mp8T
	 ODMOKQ7ALl7Nqm/7xHEhwRTvT+Wxpftqnct39iikmZR9tskd/mw74DNlNnVZHJFFD+
	 OhXbInWTE2/TtOuwJa7CWuZumlj8E7sR0gR+dK6qFfGsM7qcW0CXRU+G2o3SHv7d87
	 QbFeqpIrZyEtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9B7EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878982872.12257.11394599527509033926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f03dcbe4963ec7fda42e4a58c25a386839bccde66be2996108b1ccc89f6033
Date: Sat, 08 Jul 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688789828
