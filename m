Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78147E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72AABC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662101453;
	bh=0qnI2WbtxW6PD9Ajfdo3SZxmiyQcuwazAu0DnKE3FTY=;
	h=To:Subject:From:Date:From;
	b=L0mRRINZnnNJB577vsK9WDHxQgBjvmJkSB1MHeV3h0iGZKe+2LnEWhfsaDaZ6Qwtf
	 7RpRgHkjbX/kUQI6vdo6I+sDOEg3gwBKvuqdnzDcrPs3ItpoAOBqP/BYUeCeapFJmo
	 EdtK4Lc9Z8bWRtzxnx0dhA5yJ5VxdMWztvCD3PQs7R/4bm6PWGwY6Y65bAfrHMymCC
	 kN23CBql9VmjYOpou8iLYbv30/xL9vhtmFzJotQAkkreRq6QxQlEoTJlpBycMqaU5S
	 6v7LdZ15QpVa6uSp5vmg8mTizR4QRHF81jJBkCvhQSorT20b3hmyZHCh5OgWjVQGaV
	 OhtMJV5tRYA1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E6AECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210145334.24261.1510668075430597102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f29dc615c5f882b13002dd65673a3ab71ff4e4080bdb9be321fb140b630a215
Date: Fri, 02 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662101453
