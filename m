Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5117C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 667B1C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669953054;
	bh=2T45kxoffXX9VBnxQHsJFdozfyb45YDDx0VvqJ4bp4M=;
	h=To:Subject:From:Date:From;
	b=Te/2F8kP26ESroUGbDDAEgy+O0qnrCWecvNPTCf3uhLbNCZl3nJpeKPfaYbXhu9SW
	 lsUnHS5PceDCh3mLYyVnsiogckW4Y9RNLhvB1qXKHIzQOQW52BNOX4zUj/qcoO+Kjn
	 3i10GXCegbeMcl6ukWSQXo5dhYn/8e1VZgczn28Jr58O5T5CwTYXk98PH1EsRvDemU
	 0wSTlchp8P1bchvyyyVkcXo64tmZbAjmz0O3UyO6XOpkYgB1nRc7Lpja+rKiJ1pEtA
	 YLEdzORjLw0/a9bMz8xkihxz6S8SLNuGo7Sy68GPhe/52CiAwBOlJgSeJqf9wF4c4J
	 6SPpy7uBAV+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD7DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995305431.27480.7882547896177770507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb41f70bb0cae1dcd8bea408152abb4bda6180f2f99a63fc1ccd8e98e8aee69d
Date: Fri, 02 Dec 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669953054
