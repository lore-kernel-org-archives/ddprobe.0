Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB55424F21
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E080C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667412654;
	bh=GXps7mZCRPK4ZWorjX115zCCUdPJCrZ/lpNtjP/R6yk=;
	h=To:Subject:From:Date:From;
	b=C+ep1Ae1gsiidAgXnPQGtCC0NRdAj9bF/yLtIaAOqBv+QgiFGQQi6+Nd8FldS4vO7
	 36UusA+b93aoS7e+uJcOfox9gVDTTp0Z48sRODHOC1OAkw3hE00113xRFmHwfodVbK
	 WyV5XYNkaL+Mq9l9/DkdfrQhwN/Lns2bMSkMhyBmfL9hxrLvwGeXs7Z2ffWbPDwJ/+
	 hE2auNJqbh1phLediQQ/EgqDxesGk0kIVVbWzWaoOXnLc6dUMu3g+Iwb83rIU6Jpaq
	 qbiR6Qw4B3mNOveREgOMNS6IfPnmql9ZL0MLT4ZUmQxQVqOVv5VvRJjTUCcgrFOdFN
	 kLgqSrskCNI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E29C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741265432.16863.13297680381062953022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd7cb2a20234468487554e06e7c8542395deed445edcb501c07b929c2b05270
Date: Wed, 02 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667412654
