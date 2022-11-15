Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03651FDE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB63C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668487854;
	bh=MOBSw2u++N2wh+KX0RiMRr4S+pzu1qoRj2jCvEY2lTM=;
	h=To:Subject:From:Date:From;
	b=f68I6Jv/WpnU9kQaI9I4W0Q93LvFRirz1KW8oKGbQMIS9BI7v6puBGpBH0/tGauqZ
	 U5lrDYSfJua4bKQrfS9re9ipUhz8izcbDQxvJMGbVhNFD9DDlDAEULzRx5cjYQIztd
	 knt5gZVuag0mSyPK5OqcGCYx4oXWkUW5cN0Hqo00s3kc1lBfxYRJ8JO8R4l/M58MDH
	 3V5XnSrALnHReDXv8qi9HDEdDn/9VC9f7D4Th7yOotQyIA6BjhSuKxBug7ihBmwiNY
	 Rg4uAkcKIqolGdAMu/00ZKk5a4351IqUnFSe1ux1VexaZpYyvw76JV+QYK8zZuYlu0
	 odQKNr536bv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AA1C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848785432.2554.5624092247184982119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebed66de48fa4ec8053faed8b9b9cb2854a2f96d271aae6ddd951ebb8894a386
Date: Tue, 15 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668487854
