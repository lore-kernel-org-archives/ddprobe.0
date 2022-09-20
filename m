Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89CF7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C534C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663666253;
	bh=HDJuAFfUoMWBpUvCCIxMFywPqnk7aMNRuGT3dbEWliE=;
	h=To:Subject:From:Date:From;
	b=PYTKcgjkj/2lmf5p+DC0jf0j5jWxzq/q/VYoEtXfRluvWR790gEH5I5Ei4h65U8JQ
	 ys9sq3sV2qj6ElQfesApFtzSaBLpOKMl6cBvucyoQIsWO+QIgC4SVkUeA1FJQglGm2
	 YKlxq0dzaVKcFdy3LSY4PBnD7XMC5hEm3rmWuqgO3DSqppK8a6tzIviRJSVj3v6j6w
	 zfDXiI4q1V3sDr3HEN62HhzC984Hme6qvSyIJv38IMNdEZpdClCXewfIyPAj0GN/0C
	 vuYXIqOJAJO7yywz8Vc0mXRUGuN1ip2HywPxhno8fRuCbB4H+oPF97Ub1q+VSpmpZX
	 LD0U4PIiNpauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BEDC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366625331.12361.6347111943744666218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d94c86f6e17575103e58b52814917cc3390414e6497fbf80eff0f802d17a35
Date: Tue, 20 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663666253
