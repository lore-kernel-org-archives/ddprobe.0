Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7BF7EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F18DBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679970786;
	bh=T/Q3Q28NJOQPgLcXVh1jciJJBP7uvKuuPvdHatHFXSU=;
	h=To:Subject:From:Date:From;
	b=IEKEq8O8NHmT2dkyB0FLgIpOjEc2nsZR62Ild6BscfGHseB/qYYu0Bu7mFhzhpf8I
	 NUNdi9X+VgYKJPulI/UR+qTCRihPtbTtw0bltOs/R2lD3VjIXIGqq5YUIAa5KTp/j6
	 y/fS4FxkcKnYIjCQo/Dk5p2ho8ZW15A+re6P8HpiD7F8rux9Cr/aRCMNuQ6K6up9cm
	 DKFVpfwNaRoQdNMcEuQOO//N5RSowyJWa6fD7mVRCDuwyJIqVwh/e6CHlBk1/AlCd+
	 QCqU6Ewcp7VwwbwEYXjdok8w0J0q0s7oijcKwtc3WgZxmNWWUj9+qUyXOrxAUWIldh
	 fZDYGp9HSqfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF7BC76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167997078584.1290.14515748731421989840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48e370a86e3aec0556336eee2e932925b1b9e71fa6885b3657caae1c0d9f72c
Date: Tue, 28 Mar 2023 02:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679970785
