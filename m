Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F92198
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C822AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692232988;
	bh=ssNbQcfKnVwazVBuM4rvAful5hpdLECffE3RBIeqkcY=;
	h=To:Subject:From:Date:From;
	b=mzX5hoVt3ZhxiP1FRIlOUOjUzz0c06erJiY8g6ImOnwzpPu11YPYJ20946/sYtrNX
	 8OkmDgrEL6XcI9ExNO1Yljxp5sK94I6DZEZULIOIUSyHF6kqnxnkpS+5kvd7TdHU5Y
	 gc2em8a7Q7WPLg7GZAlQvQeRzGoDK779YlkfcJaw8xTDaje24J/1IidOYEzmKfHdMb
	 ndq5jb5nOmTeW8Q2M1CucFOIRYX8OljuggLD4wojGJnXb8hMGfZgrpRY7xYbKOPp61
	 5X3C6qAreW4w1qR03xc0nK97U3jmej9NeJqxRoxbTCc1ZUGtZ3Kx7Yavp1tgzu+e2G
	 Bgl2Cp8FESsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4ACC2FC04
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169223298869.8698.18337346771957887319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee56821fa45019484732ad1b7aff72a820302048b19586c9db2a9c5f42d99a28
Date: Thu, 17 Aug 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692232988
