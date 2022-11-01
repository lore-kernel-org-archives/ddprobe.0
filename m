Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ED421D79
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1B5C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667346654;
	bh=yluOQpbYJVTcjbxtQFP/AEO2OHr/ZKRKawHfOsZ2Q3k=;
	h=To:Subject:From:Date:From;
	b=Tj2+pHmgEZCWhaoJeDrLMLUMWnT+EZbjwZFfHfijBSKlkoN1ykZ8yFsaXnFV8pkHN
	 c06oMH8pHSdfYq2BKhniZu2pWaN6TwylDN70gVTws8odor5G6GhuzxTMn9QSn43kr8
	 nUZNFHvLiu4yZI2BUcPVkWn6tBwmj5rWBXzfjPz7w5j4wS0mJTI6kGwuIpJXe9Uy76
	 SLfQL3dH0dittQcrik9MJk2n9pxQ0m0TR+Nxi1RJaiScv8CYqjNd46fJwnj9B/P2F4
	 FDGqRkOHV+qkmXoULeqmuv99DmAL+xq+UC1ki9lkysCWDViwBhhyxXiwrodtFWZ/g/
	 zG5yfUleDvpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF86C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734665431.30340.760829781359063640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced036e3aaca50dcb38712ec70224dbb5eabf1bf9fe7da19f6672fcdfe9a210e
Date: Tue, 01 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667346654
