Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5083410946
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ8/KFFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75E3C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697187428;
	bh=EJ4hEwqBWf+TOQ0/or+gzfadtMz9NOc3Rtb+vkjAsok=;
	h=To:Subject:From:Date:From;
	b=FZ8/KFFHoXTFklyX7u7hJnchlLhN8sOoRSfMQM8xB7VRn7OlVsIZG86D2jyLqrLcM
	 l6hlqhypNjKJe+uFdbITan3sr28kecSwO9++TUJbzcxfV30l7Rqgqg/XfRuUi+sxhe
	 XilUkCiOcPsxeqgpmANJ8/6m1e5KdvScEyWPliGdGLBgnrsBELnmVbOAmfQVGac3Xm
	 vOECGwPyWG4rlY2GlrejEQlRjc/2DXgPOSPNaOxpOZbh9NGU70yfkYntEETXA1MvDC
	 CB7GDC8YrUOsaihfVfbnRzZtr1dPLkgvnje93pQAldAOUhGrkS2pIffgmAaY+U3+NV
	 3FwIhCJbt1TsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC880CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169718742870.20304.8819312737844966348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61981300ade129458719341da46b91c42fb7dd987a62fe1094ea45d6c344a11f
Date: Fri, 13 Oct 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697187428
