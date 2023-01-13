Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAECE20E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F7DEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673604087;
	bh=ybMWClGT85Rwgc6E5XYMzPAxdT7eBJo0V0ziInty7Ug=;
	h=To:Subject:From:Date:From;
	b=ZOxtUYFCFWC0bCAWO6w+CctA9tIoFjU8tvsQ0u/98B/H+3WjZErbPQ4TuFNReIfHT
	 GsHiHnIQiFbwmCYeBi9SR8bO4Nnt8lOyFvoYjP9hoaAotyGGWtuxOomqZy20KYI9UQ
	 /os81VOwqb4lJH+1UkZ0gnPbHe0nri6kRCL7aVh+TdoTuM70DV80/FusHEDtTkPSFA
	 hbUYV+mErsR+ksP3YggEo7j/O+HxDF4Js7okQmlgW8WMkhwzjI5EN1VxpPg7t7GTWd
	 zlfWuxbhxb0UyUiQ17x6j4OJHr57mKlBntCATEnqNEc2WEaVUBIHzoKe8sM73uFMgz
	 aKkhwFEPAuyRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73BA2C61DB3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360408746.11995.15701786223531086623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdfb3b5834359957e7e11e394af5261eb3b8ef5fefec32e26621dc9babc2fc5
Date: Fri, 13 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673604087
