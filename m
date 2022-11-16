Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB33D2CA4
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71973C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668639054;
	bh=pzYl+wrYZwSQx2hRHrRyBXyNnvaO96kWPbI3ffHNMds=;
	h=To:Subject:From:Date:From;
	b=mS3NgMyckTUCw+2bY91mgl+/81zUQCGAWiZCw3mloD6nqkVuIk/W60Z1uneZ4/xIT
	 xfFFyE56Osqqs6uvxUafNkhoGeZcC5hSTOADlRgGyhpRiMydc0by9V+1/Q7Jj9kgmO
	 sJlekAqWP1qdDSL69Z2KJ11JZay1OoSrbdNfUVeHcjZELlxO8S+GtGRr85+AN5rg7F
	 oa6VqFaTKicSIR8AdyMu3Zuye7TPbdJon22Lj92Jr/8ui5+EITHjbvtwK4tCOutjNp
	 wIUj5hXyZ+sJNWL6ku5RCNlyZ4mH5jEvVguiBxouF62MO7Lkh9jq5amNBKhNel7Bmn
	 /pT2Ud1Y2JloQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B0FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863905435.15433.15193241237055841497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfc383ea9be7b41ef336a0f97672e3383b4c10cb0a1d0889f653f16550af9ea
Date: Wed, 16 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668639054
