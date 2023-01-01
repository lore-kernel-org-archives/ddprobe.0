Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C1415B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C0AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672597287;
	bh=PWbi/MsEPpQ947mzJpBIs4VGA3tMBN+p9l6cC65J6v8=;
	h=To:Subject:From:Date:From;
	b=u0LKAdcPAImM5yP487EIhgUaRHRsxKavlhW+gkWrehxCs7AfLiRFD1SF/eUtCwM33
	 +MuMduLhdF4dzvZNQ7XBtrqOMP9jivBbJFGkNj5fNO4anWP+uQkJNB+JkpOkcexRkO
	 YFubJ7XVkUo5BkL2SQFNiTWhpH8wfk0hwzjM/rJt0+1M8UlY8ctULTuozSGZncpMy+
	 NMl894nNkc5x8k7E6oBLMUpbNyAzR5tQlmtksJNjX6IzH0z9v6jNk2FrZKny1LkGQ6
	 eRpsFHVwbdrTtj306johrVfQKJSrdwlQEn5oxnitP5zgF+enWtN/me9tN7mDTn+2eM
	 +Y0cj0et1Q8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AACFC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259728742.7262.5087482026756710626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad62d9d0b3b9a7a4425e19d5214b4e43a495e8cb1bf6b64b727dbc848d89fef6
Date: Sun, 01 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672597287
