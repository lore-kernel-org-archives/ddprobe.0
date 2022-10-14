Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7268370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72698C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665713453;
	bh=J0BfOmWrISxRY5QElSWwANcdGGDHoU0D/WhUWlREcUw=;
	h=To:Subject:From:Date:From;
	b=PRXqIwceqKa6O/jiQqlka1D0ExhGkoDZA1K8Nen0eahXfYLWRZM7nRstPF3SsmSR/
	 G/w9BlTVU4xOxe3La8jOQT2Z7CcLZLHrDPYETiKXOuoobMdjfd36pI0p1IKHblytdK
	 /fc49+beAHYxiY8chK3qg+t+tTcs7gji4h9qV6S0I1yADQRePcBDy7cOWyG/8+zR8G
	 E++KBavtpk9HrEvIA9w65Lwl05e2y+WXSG2fGphZmwOctrmF09NnodagjC2R4uoSOw
	 0hcwBSc2rgLilnQ1BLP6J4UydAdhqBB5EHmbOdQmqnWZIR/XIX4qiuvBc9yiZNRK9R
	 KTqfXpzcKWFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AE3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571345334.722.18425225431570969933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea5986cba7c49285d552ad57714d275acad56f8a0ebbce3ed0cbabd7a1b7c1d
Date: Fri, 14 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665713453
