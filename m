Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A38807
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06DCFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679904126;
	bh=8KzeDu7uwp9Ze50bhLp/9rGa9mw2YEEJrw3kJF6c15U=;
	h=To:Subject:From:Date:From;
	b=SLVTHv572CZvFs3eWuSGAxsDNxNZ/Np7m0xjD7i6+lAs17ibUGqGPf85DFZS6+j8E
	 WpDWaa8pcL3TlVTsWkkua5mirPD8JLWOMjtcGuDlTiZjN/OIg+yz9W93s5Kig9DflL
	 gBZy0GlH2w4eVJLs5lQVtkNjWTNqP32AZaoZ/hJOdnIbhWIc5l1r72DoaVo8LUr7FU
	 Qo8j/cZlb18S6VH+PujAoOr4cT3XeSjEzdPXPEGiK5086/GnWImUyAzrdAHRK5CT7K
	 wOU5KIdRydnZ8v8z2PvL33ngsJqqA6JTwM6vddoccNqlRXAvMg1MXkAfu5ga7ZJN0d
	 x3EqjxIWVRbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E54C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990412585.4718.17718299443054800856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91711ec2d58be365b90c2c1647748a8d28b99328d264c81b107da063445fbd24
Date: Mon, 27 Mar 2023 08:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679904125
