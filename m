Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00508A2A
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNU/8AX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763B6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702777096;
	bh=yQq9dtysl62YoG3rCRpL3NE33xYgFYkDKX+XxOJ69Ok=;
	h=To:Subject:From:Date:From;
	b=UNU/8AX/vN5n20ocvDya18PuBwIdDwV35fJ9iOevfGu4OdP73pHTRmX+RURe2WRTP
	 vaFvE+ZVLosGWbD1eWSB8n0eIQXhPZADvNCrUm340oewgnoVdVZLy+jYYIvdRxzNIZ
	 eEoZ4L3yroEe4Dxb4afNSDlJcnQ/TXS1hf3CuXrwxTkrfGZtZHXyJ366mhnE/bDhk+
	 CrImBgWyExrJl+781Wk6iB1OQYdn4fVXprcECl/qzVoyDh6hW/h8lD6ovOrU+bXhuT
	 dkK+txkPwyRSgcPxQFXSk9/vOzgKUHLYP8IIfMp2QKR4kjQJ+fyVch0qvuY1dIgUVK
	 gMSQy/W/B9jdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6AEC41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277709636.7425.15736300217286138941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc060395aa54fc9b80a8777e0e0424ad9ef3222a693f08ca9cd00bc0feba9f09
Date: Sun, 17 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702777096
