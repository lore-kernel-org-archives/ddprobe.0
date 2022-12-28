Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5FE1117
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3B3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672227087;
	bh=4u+QGW1PSa7PYWCM/L/NChNghR59DVQU6ANo5+T453s=;
	h=To:Subject:From:Date:From;
	b=nY+HH1NlHMx64h0NNDhuEvcnUWmffWARE+8VDkqln0oNbYRewsRvdcsX5oR5nOa03
	 vbf4mhnkrChHiMGRiv6r1V2C+/DnOygXFIjkUf953gDAkXtF8mvNmghdDmK9GUtbEy
	 IjUVMluq5eecUOvg8ZSPpsysP/28mqsSIvRjVjshgiM/bIbsdicCM9Y2/M1s0yc8gy
	 Q54ERPWqH8kBILXR+7i+PyJ7z89YFXHr1ZKi3q3GtP+EfK89Fw5vmL5I4EF94QsBS9
	 kcMyk5J7NHbz3xTyyRftYKIE4zpm9d8s7sJEhzF6cVMacmBsXI7l1gnElM/gM41N/u
	 sabcJLE1+r6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CF3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222708740.6076.16432624980510421920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448f372260651307b41b29cc3f5d8c338e9cc44bd5444ce5b3c6d3ffcaa09fa6
Date: Wed, 28 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672227087
