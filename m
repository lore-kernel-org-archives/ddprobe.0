Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4156B8460
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BDCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681744685;
	bh=F8kkBloBFPY2WPlooM6qJbt8qDBhbaewuICcYi5I0Tw=;
	h=To:Subject:From:Date:From;
	b=tpGR12nodrOk7OwEE/BarUZXlW23exTOTgnH6WhsSFXqNdRMFRFWe3gbYkJ83QRpS
	 Zb4xl7IV24ROTQm0DcZLFl1bf9RznhK9Vwn4I4+s/IH/W8IFNstqqcJ40UASLzwkiW
	 y5W8UKOEpS1Yp9E/3uJMkOt+ydNhuKR1y/UsI2r+YXD2kCsRbxSTbsq/44HyRPEWwD
	 mzoG1Hqv9OkOVaXSunuQXDgowTVIeFywIV9NS0IOgiYlGw6ynLpXgIEYIlXwJOUVBu
	 11Rfh0VYiRY1TBQy//1Z4OXzVNQZQLYzYgqLOvHbpAOVzB5JDnb1ZvvujViYUKeebs
	 4a5FLRQcE/ePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6629C77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 15:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168174468580.1278.7139508001048518022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a13dbef7db6e826cb99ff4f8a6f008f66ce0b700c63cfa7cdbabe270bc5f206
Date: Mon, 17 Apr 2023 15:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681744685
