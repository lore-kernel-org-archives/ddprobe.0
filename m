Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F412374
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2617C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688359568;
	bh=7ytGBrMaPNdIT5ZOcBzsYwoFphdu8o840pytTumWETw=;
	h=To:Subject:From:Date:From;
	b=YXCW5/x6upD80+2lf8kL5ukQd+MkdAWr7Z5iqyA1zJpPpA1p6CKCcplbljYvCeSN/
	 NzrKdJggYguszssL1+ntY5AbpVl6L8aXs4I1fgQP4tAaz5xqJHs+lpVJqurfVI8wWb
	 SCmbO2A8jZ7j0MO8jdST3UxYJuTdbAH8hlhFaVqmHhK0CAFetb7TeRXlg5poXuIFXc
	 9Ya+wDzvVFNsq3nm0cELnwz8xPsFu5YjJP1pdJliEt7IGbwZWLMYGNsEi73j9q1jWE
	 ykyBcOGcy/aw76DW1PY8agOGjpQoalN+opwSTwsfRPfKpwsNlu8dmS9/9nRdEUHIqg
	 EtV2NwQb/Nw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80E8EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168835956868.18049.18070371416272026660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b43ee31cbd8b07c9fdb1e6445f673d3744776f2f8c60adb75cea6abdc363d6c
Date: Mon, 03 Jul 2023 04:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688359568
