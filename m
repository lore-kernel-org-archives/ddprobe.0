Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DD67E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50CBC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678000025;
	bh=INYdyyMAknK+KCxQN6wEPjSevDgf4Hu8dreuFs2rR9c=;
	h=To:Subject:From:Date:From;
	b=Bkzc7dfZxWY4drDu/SDTqaXUlrjE7vl+SZpJmjrynCFUTln0MqczJ8c/Zn45aPlAe
	 mzOFQhGF7oQR8VKPDvlaN5aVMVttfY2sOeVlpedaYlHp6UDZcnudrfPzZ6mzEfriFQ
	 MTzuRAGv+VxfOV/EfIA0fptJBzn7arh2OuhW9gIVINBo3zJ/NyzgCpCyFRz/Nf2O9b
	 8axAaPrWCqjQ2+tF1PQe5Q+ALN6nbF0k59728sXNe2vKOOrCz72u1cEu5zh30wOYym
	 ZcCRwLlPjWdsIwaz1bBFAvzdY0WUwMV+6Byc580pJNVXY9i91DJ0q3JdhRj3a/gOoM
	 R7dUqLIj79Xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C137FC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 07:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800002576.26108.5017408831028476529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4cd317c1a86c0037d1466b0e5f7b1fa7665f4c8a0038628ca2b8c9023d5525
Date: Sun, 05 Mar 2023 07:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678000025
