Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D86010FD
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F3DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675332965;
	bh=IIkh81w0mdHKSIA+m0Eq2VKsiT37HHjI1rM65RNvUr0=;
	h=To:Subject:From:Date:From;
	b=OUQja8EKP6PexO0qM1xY/eyT6tuGK2xDek4dFaZ3KHX6vX5RIWt8cKf2YjxXY+xHJ
	 ZF+AKN/lcNlAzrYvxpwlPYeGbCTdVVrJip5WXPUZx6Uud32pLicECKXMywvsnAb0KM
	 49aVBmLO1Ih0++4g9DpNO9+/UQgKs4X1IQrwvoO705Chj8VubiDPelvb6+zju1egzI
	 0Gnn+0p0a1ydEwFHMgnUX4zxL1wDUr8jwZV0cN0wEEPZv0H1KhgoyzSnQZUZuxPle7
	 oIezTqH6F675sVcGUqXc067bbsJewgCF/xicMSjD+0TBXN1YteHBjwzD6cJRVpGZbj
	 4xCTLSXPcz+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD27EC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167533296576.22113.2784512818199996954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c5ad86d9fd88c2928dfdaa43eda02b115fdd3b046328f089b7ffc8d0689a60
Date: Thu, 02 Feb 2023 10:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675332965
