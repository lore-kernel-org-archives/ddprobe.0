Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60150944B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE02EC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687540388;
	bh=B7H90A+kv0IIQ00+tg5664yjg38/0HXPHpnTo4DIxo4=;
	h=To:Subject:From:Date:From;
	b=jv0ovTPWRFNRn8j5h5px2jFnkuZOoB5lwJGdrRfCdAvNpvABvIEO4qjMJvOhdQzjA
	 b1TLBWd5yLtarBvyJ9d/BeaCl9v9YT6hbglHyEB6YCh4l6NiqLrhENoUsgxlmMgkfv
	 fqmH2R5QL2ZQQue0ZVOSGvcP+H/OuQCmTJdqrt8wZTH234lwD9XGwKH5Ct8bZ3FJdL
	 QzvAsvTKVsNx7h8SF0qzjHS5HwQX1YLr7LlgE1Z2N6UpaoRCRII9Uf/g5hAZeynKyH
	 BAfDdmagxTInse7EFLgrrqL+qo8SLK87WdGg76miZ9g2YBlYHAvDSyt3I7GVvv/wLf
	 8nhexE12xacrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A273CEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754038865.17221.12134126052679353451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9aeeecb511ac96d67fa3a09f946352343fafa92608925600dc1498632946419
Date: Fri, 23 Jun 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687540388
