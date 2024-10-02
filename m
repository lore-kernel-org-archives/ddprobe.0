Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F61D0DCE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727897154; cv=none; b=TWVdmnXpBkd7CzxvJFoqKgzWNQyXY0eTGz1mH1R4RdZqt0/ILIvq7dvNJ7M2TZDxK8Gr3egTCmN5wlZrriX/5/t6HjS1hFx5rd7VVJ3rmRWkN1/rfVTzsnskl80QYGqgcggeJtP9AnvurGzC/t/LVpaR4zMRlrKgJ4Zko7SX8vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727897154; c=relaxed/simple;
	bh=WvKpw/2Jvi0dlW3x6g6wpNmWc2sdEIAVXoe+3lopYtQ=;
	h=To:Subject:From:Message-Id:Date; b=f93zKTo8yumvHdXeNM9kKBp4hR23WPk0jlhkszL7B76RvFSsB0cAq+88QC0d689KH0rrFLHIoYW3DRRZ7qUmKuwzFO+GahGlDaOtvExA/E8WEf3YOz86E3FQvWTmX0mQZmcOcNLQirlZ6+oc/0Nfl1QSyZ4Ke+EcmVTOt25RXdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+YMN2hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+YMN2hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E2AC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727897153;
	bh=WvKpw/2Jvi0dlW3x6g6wpNmWc2sdEIAVXoe+3lopYtQ=;
	h=To:Subject:From:Date:From;
	b=R+YMN2hkqcBUYlepSztbk+zWEat4yXuNwICr0+9P2jSd3iiPspg6E2h28uMsHglTi
	 Svo/Is4NIoTbCMWV0yTkS0j5X+XIt5D74J3rFHN6gRa5w3/LxIT3V981zUWggpzRdL
	 Cd11oxstf/q5y7dnwzLiULL8vNkktXK8FgUo3tOahASLBWar44JALdM1lm6UvqQDgI
	 LFP63OJ5F56ZG+QG7W6vqiD9J5ppQEyEa9d/G197fkxjbwqTO0nGEmOfi7NK2p1Ik9
	 0Gc7y6ZuWN0vfx0p0M9WY21uZBzwIaWJ4tg5dEeI4HC92w2JPyR7Pr5hFM+2Kk3seS
	 BjiT6deDpCTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F167CF319E
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789715363.20450.8099699579777653061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f3ea050d545454edb00401c7cfc603bf20f734b7987f4e80ec8813fcb51704
Date: Wed, 02 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727897153
