Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E90A20
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 14:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9763C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680273125;
	bh=KBTISCuw+0gXskZEgMauWOdD4IE7WB/D9B671Rep4a0=;
	h=To:Subject:From:Date:From;
	b=hMsukMv0RrUJruiX5I5zbW7nZR5WcZ1jpurva3nIgAONP4r8u/VsJH6pxhfhYXHjj
	 CyLILg3MKbfyzteV4P+PhmKseK4H0ZpgU8s909X31otBsELOE9sbOE+WFzZmInYQto
	 6kRyA9Uyg/vKyN/S2uiDZ+es85QK04CW2FLXqoc/jRd8DyjG9Z02BjS7wMArNYSFga
	 KAiUdjjx3G8CJbRhKb2HeJHfGMuJ2Vw3MztshBZrxmyjj8xO74Raqb7ea7N75D0cKP
	 E6wbgT6pNm7xoKOFPIwIaf6iyduWSQLuEvQwul66yGhYLlnuIFcz0xuN39ywsVx5g2
	 xcKJGcJ/g8c4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0E4C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 14:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168027312582.16644.136914204027931026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cdf60394ae9310f04f0b1eee2d8d872a46c0e667053cf2f7c1e9d17a603ad37
Date: Fri, 31 Mar 2023 14:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680273125
