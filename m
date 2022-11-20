Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7CC7EA
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8071CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668969054;
	bh=+HAmldWCccDrpVCBJwI+CyK4AsXRiFXY50WgXnaTers=;
	h=To:Subject:From:Date:From;
	b=LGXjfXObe1C03+qG7yo0VHtatJd/Rtuiy7Vae7iTrdKChGvf07mvnGDuaO6vd0tDd
	 KK0xUHXBaYXTT+KwncBkVT7VuAWPSJw2na+CthUAxJ8XYsL7Rvt+pgX+jdO1ZWHRg3
	 0Z5YUmNeW0ZdrXmBMCpiDGSliO/edHLvtmcD4ljzlGxs0UmlPuPQ5KAoDw2V2iQRCm
	 YQfiKLjh7rUHxriupLvDcRPSb0qTA0Vy3XQ6TGw8seYHc1eEeqA8PBUNgU/YYSRqed
	 kJSy5GtBIcudDgfsK1bmEdGv7OGLU65US6bgGhvLDzBtxuZuoxVGmAvKKLdXH5EHmT
	 CWNw4/lotyxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC89C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896905434.13605.15181674962895135355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a736438abdeaace349603c1a277101951117b0a8b7035a508d962884f9af13f0
Date: Sun, 20 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668969054
