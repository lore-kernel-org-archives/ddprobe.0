Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D786118
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98A6C4339B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686163325;
	bh=IHks4rAx4La36PwHlcKfepSj2ZutVG5cbvo4eW6+JhE=;
	h=To:Subject:From:Date:From;
	b=db+C+OYHitZlTeBHo8oIFvU5a6BWvYWeFXgw/MOKPOnaViFDitH8aVr98YvNu8e1Q
	 wkBPpCjb89MQRapf19pmg36ffBDwFQhBMc0ioMe6bamQEzEel9lcL6DSfRt0DxdE91
	 B5nF74RPo4snskDCQ9+FBWxEpKJtCJ5ygYstmz0jxi6P5V2PaoT8XuMexfskt2/VNN
	 8GijwAqMj8BU+In6yJbqWwbJwLb0TGqiGeg83rPgiKgnvmW5unF1UsrEhFSVvNWW5o
	 VFer7vRx88zyb02ipXVcyv52e5MrfVALJZBq1HNsbdbZb6jhg/C074FlKhkA5EuI15
	 /OPAO/eHkPo4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE660C7EE2E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 18:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616332577.30471.17000397091247899779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36cb0c994753c7ebc46189e3bc3c0e610a35875681ae890cb68143bc5cf11ec
Date: Wed, 07 Jun 2023 18:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686163325
