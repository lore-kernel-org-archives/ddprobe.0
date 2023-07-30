Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD1A810
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E368DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690703528;
	bh=zZV1NE5JTG6DsTrkHzYjJ8aow1putNkF4yoZLh86Y+8=;
	h=To:Subject:From:Date:From;
	b=pa1+diuqhxcLWCCraXjZGWQvIPsf7REoi81X2Lcf9Tt601iGHjZBwdO/Tz8+w3KkV
	 okFh0FfeR154wxz4OVONrNAAUh/vr2+pAkZ5nS2cDm4Upsm/03CnQ7Ulx+wN4O11Vt
	 7FCsziEQK9Y50iZPv6insy4XrMyVJYUxom6W1qbXv2ZVYELhZDaiaExXANcq6UtV0t
	 4HvgR4yLFM6lUzcb+LX7WIQHr7PqygnmFrpl/Y2citCBp8K1cVpCtUunDst7SL1DQz
	 FbiLE3YX4HOl4W90b2SEUkS2zRg/kZQhPX5o0FCoQZQUIkYGp0c0tJqVHwXdweYcXw
	 Y0GdSv6ho5qxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF50FEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070352875.9197.11860296943064482081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b136b9d4df9acbabc7af6ca141929233d3d8fce851c08625c505ac5ecd5ae14
Date: Sun, 30 Jul 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690703528
