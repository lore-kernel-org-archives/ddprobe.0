Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C8B1FA0
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66920C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663810853;
	bh=cckzfRC1g2LIIzWzA87gQdGtLbLPw3oqlMBY3JG7YE8=;
	h=To:Subject:From:Date:From;
	b=MfnSulYPnwc9P6PLhZwz/mzbZQy288jO9pZBBAZjvQcvB8obM2+08g4xcvSr20rgk
	 EcW8sC/Xi6T470m8eUeXKImCi42IrCkrxWGuhGWS1EdAtYiA26JXLd09KHJaG7GVn9
	 8/6LIDOqMskaL0kGzDpZzQVbDdDbbF/5dCh/YHf52FJf7gjivz0+NB/4DLa3QtyxAV
	 iPZrhpBwRzbbW2je43ToxsQilRNGgQ5Px5rhlxTMlf0pQH+z2f1EDh+rj5wxEn7ngD
	 g3KM/ESNvPqddaMT+HY1mKreryhwR1fZDMHG6BGqWWdp8OEncOg1GbVdHH0xlRIHzv
	 ErVOBiAqNzqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AA2C32771
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381085332.16420.16794099094695321358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10c0ab9295d68535b2e1a6db6dd1d9fcfb4d78cbbe8ea4ad87847205909a383
Date: Thu, 22 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663810853
