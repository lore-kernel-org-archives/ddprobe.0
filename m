Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4E6746A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41E0C4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676646845;
	bh=UTDG5NVVVCBA9lTmRRiPNuxxQRvctOWJjTmCKG/Zm8U=;
	h=To:Subject:From:Date:From;
	b=mV9iDtljaRn06AbKDFaaddymock/YJUFAqfbeajgj2M0u1hl/8xU9nHC4l9cNXPl0
	 aP3psvVuvgTncXqPuAeXluWe2+ntCIyDIBvkCAOkMPOuuVeYMmG+DgSu/4gHko6rIU
	 3pCM97KOztTH1ZS1PVffw6RhmjQHRcVtaa5Es1jACiV+KPERagnG/kfNyU4EUTBEOs
	 G4NskNHMyhKD9tnnTBdAo4qwcE1QwUU3Im82WrgMPnQnsFlx4J+ETbyD/TJ9fvSdUw
	 ZvTff+SH6PDAhJ6LQjmhSvTZTPUEhKMJJnWsmzWo5M/6zYonaaVoQW0yjDZaecRJfl
	 bMVfBAskhuyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D18C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 15:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167664684580.16577.8209822393577413661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfb2ccd0f7a1a4bc144b8493d2b5a535be23efc363d867d0731a5e1a3ff96f8
Date: Fri, 17 Feb 2023 15:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676646845
