Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8106FC7
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88353C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672270887;
	bh=Dxd1Dy8v2C/XQpEEWCjNRsb8t6nnpxnufsNgrDxEAGE=;
	h=To:Subject:From:Date:From;
	b=pCTKYoomsBHzrPJ0nRfSIN0qZjmF2or9rmUPDPHoGVhNkTWFcmjwIYzoPRxUKfINg
	 sug5d7p5MKLEHdE0cHxB/TriLtfnv2Ho579xN6+4BDAFg4wC3WqDKkl1RXXzo4OHxm
	 gVr3aKJt7/JgEWbXfWsSrYbL5qHvAEKG+XjHLQeVtH6ma8vqGgHh/urJhe3UaW9OQu
	 546mKrxbfyalVmT+z8JJia6pNEMYvQ2jFui0+rdMKDFEX7RpNrP5tXS7NOfINCeTDi
	 le+MSdz21Mg4anhwjM4LVpovYzPlz4cebiyf+zKF29w2B0TzpbZYwpmQbZCm9Dtn1j
	 nZ+4Nt+uvNwMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682CAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227088739.22136.904832568862321016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dee01164324c08c4fa29bd978cfdc6ff9d84cdbce79942c65e141f06494c9c7
Date: Wed, 28 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672270887
