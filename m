Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473EC20E6
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 06:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0037FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 06:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685083506;
	bh=XiWnv8NwiCzPDt/guN6wernD76NopD6kOSrXy+pXmkQ=;
	h=To:Subject:From:Date:From;
	b=SEGELVF/eYSBs0wT+OkMJmJdQbYTH1jOydVJBV+RXF5AVMWJGjQNsnf0Rn2NuhMFk
	 8ovBd8WebWjhBQgausz2Rfc4sgizsLWZ4mXYgVjCju8mxmwJL75xkW/GRy8ngcOFFZ
	 gwuoejxt//XLZYt3x5bb1jcYWHmItsHP/msgfr9ZA7wK/6MR4xuIg/naBSbc1N5toU
	 toBNOtjP8L9qL9iiKACjJRkQKxzHjh9bPHi7zwzLjAEQ0voPIUa41xZy7dHRf0TJjp
	 nWHwFIy6nG1qccSAPfd3QNmG7iDCvc0ba/2IM1ytj6F5oJKYHnFE5Vep3bXDIIVhmb
	 ZSiau9vECnq6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D055EC7EE23
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 06:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168508350583.687.17179617414519897527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3c4462617fa4d4266a07c6600315e3c2864d91656626be0d26412d65097bbd
Date: Fri, 26 May 2023 06:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685083505
