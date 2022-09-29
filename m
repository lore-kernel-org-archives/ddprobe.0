Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20651C13
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0A2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664460653;
	bh=bwFsoomCUD1QqRqSmFnPC2xyDW6H7zqtWuTkYo7knIs=;
	h=To:Subject:From:Date:From;
	b=fX8uiy1S8SOwoV9sOp08F/tBUH3LrWQlwfq7fmpBGjXyQyitayVhnP5jQzHWGvgbD
	 O2EEYdaZXlFWCu1/1RVr5HBge+EzPlFCG91HIpGdrZSjUgKn9yipEmVEzn9nImaK3W
	 MDYQidgx/JG5MU90BUKTAWzL/pS5EzTdIZn5NW8OtsDj37yYDSVYAj9JfVyXxrBGXF
	 albgsDjks+heuczR8ddQZHxK7cyMNsDE3wFC8U4bYrqZNkGytLS7OzUAs22mHt4Y3j
	 PwhmxQpT5Chmx6ubjuizdBUwPwmsBQL85ZhuWaEydnVHqH1Fa0yjzyxNS52hmcZee9
	 dvIQscwr1zFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E699C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446065331.27486.751787995944891561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7798bb882da3fb309ff12eece8a53b014351cb71048fe685fc03f90984cb3a
Date: Thu, 29 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664460653
