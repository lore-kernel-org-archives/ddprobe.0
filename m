Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23127B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAF1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666471253;
	bh=MlKVeeF1x/6zqp6GKtq+Y2hzaAjTOJS+jcU8b29uNds=;
	h=To:Subject:From:Date:From;
	b=ahQKmdFAi6ZZBo+JQTr7bKZmxVTJ5ggkYFjvmvQcI8+flMQukd5vlIWChXbA91WM4
	 6EN5xrOMISnLvfj5JlrGGTJArNyRzyC7B7QRAaCkwzrKs5Ah4Uj+4QCyxebmetKEGd
	 N6jffQZFY7tKiwgff/E4Isn8kRvXjpozHvO0c8sNjVfWIL5QW+udQUiJc1bNYdgNc0
	 pgQ4jQaaKML6EX52CMPvkW+MA/87LG7ueIsPJ3zaiCxrvgl4rVBPCen4Xah+jN+KhW
	 OF1masieENTFhZhfgfgAuObeDHuv97Z6XC/0ADpopJmSbLPYCI8IkMB9jxcWNF8DIG
	 K/vzubXQVgnsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BD0C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166647125331.17165.3306828967389235425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b5fa38ec23653c94a5904f9760a7d6bf6872eeed8b22f5b2b7adf23c5991a2
Date: Sat, 22 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666471253
