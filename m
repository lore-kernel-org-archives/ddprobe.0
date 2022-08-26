Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AB04401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAE5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661536252;
	bh=TgEPDil93uZ/HKzZmdqVoUdLKs5VjL610EDvCwaO6kw=;
	h=To:Subject:From:Date:From;
	b=NkEwpsLxFSB8ZJf+1oNIaQ6teiSWOBLKKPzTEQarB03X2PV3lU1QlcIJQhIXp0NrF
	 D4FgoI5nIIwh4HW2lhL8yEGIt5VY5ygHwxqJ72hBYwT7zMXkWLf3tY3WVfHR88ZR/U
	 NqtT5FMbK3iOFrG7eD/QEkkg4EbmYJANAMLgh2PLVZIq2GTOphxnKoogzf1gXLEtp+
	 5V0MytEDp5eZAoH75E7MVToBA3rjz6xj6InXYbFB29HxksrNKxCOO5qFXqdW/1hzPV
	 HXQ++zH8YKx7P60oShoiWvEFIopeqaroAzJtSXaOZuIM2LOV27He33zRE4/lSScHxB
	 OtRFWvH6wdQ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC09ECAAA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153625237.32279.3006760240228833971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4318278f7f4c6d9b6efca1409ae095c68037d8061f1dd5e38fbe18989f6578
Date: Fri, 26 Aug 2022 17:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661536252
