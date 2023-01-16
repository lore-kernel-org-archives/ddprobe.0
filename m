Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DCC6FB6
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2991C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673895687;
	bh=4svvXRZ1TOeKvGUrd6sqxwWeMaQlV0F1eTUcse8kAZU=;
	h=To:Subject:From:Date:From;
	b=d4tJCYEYbcbAybBvDhXrpy93qUUK60qXE0sxX3QR+5yEAg3Af2lhUYlnIkDECBmY6
	 zBFJTZKzbdfHeFTrD9th8xbm8NvSLUqytq1fbZsfRw242WB4Q+lldxoAIDzZ0iPOIv
	 /7Znwj/ZVB4Nctz4TYc5QR7cTHhGNs4k64OhTXtJBPO8N1f8MmUhbLeVOsW2xFIGVB
	 A5Hw865B5Xj5iF/M6rM4sJYrb+G/DX7ao35WT9EazBHnBJTYkrtjmrt38sVWuraFCV
	 ETRy6KJGIpAdDH2oMW6RxRsxRyImkMdBp2IgxcMKcIHxvWhmz/E/WgrxTThYNs2CcC
	 lN4xeeZXszIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87582C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389568752.17563.5292588760301280218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d9664431aec94361d4945fba912f61d92300481e919ed5006000d49f970dd9
Date: Mon, 16 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673895687
