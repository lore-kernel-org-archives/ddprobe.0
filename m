Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B11290F
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E32C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677437765;
	bh=qMZFp1nOtwb8ii00xVBr6rkhOIGIaSsiaAKjkHlzn0o=;
	h=To:Subject:From:Date:From;
	b=FBHvhLZkHKAskWF5PZjBbfL8qFW0Do1KYJos/yYg+BzTKasUtEWafYQIhzdyj4JKv
	 75qy7aQ/RV1KwI8Drpb+zpsYeXAVP6LZ0ToqKig9TbxhShVVgVzcZ0eVSmIwcxzmGI
	 YEEHlfCBrj0Us57bXg/YVFmw+4ka1e9CJlfzrs8c8Sn4ad49oj3zx8UvsWXha4gM2v
	 DzDUeRSQtR7PlFWk/PrREC2qu9oK4ToSdiXR20pYIF7kFn/Tad1YP1BAoA6uDD4OvP
	 nSJx6OEdypSufBNxpM+4fke3eSl4l2TW9dr3j9pXMCzMnc8OPwPzoKWlfbXmaHN4gP
	 ETZV0UtEnoBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8664C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167743776574.3013.17648324785646050706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7138e21a58229f205746796a2be90b60c7db9ba005f10e80e3c56c3e6dce6e40
Date: Sun, 26 Feb 2023 18:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677437765
