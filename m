Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BB214F82
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnknZkfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86783C433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704211096;
	bh=weTzq4eyKEh3RBM8IE5ez5nfmhk2qyM10CHqxp9+M4E=;
	h=To:Subject:From:Date:From;
	b=CnknZkfcQlgfBdqCZex4+jspcKLINl/YzRu0uBNeVeKY8ibJmGfx4YkzvINOBCY6+
	 RJnp0ofhSu4KX3wQkGGns5LSC+oBDGZs3OwuGYUGciGJVO3CXJVo0HAeW6pOkoDMW0
	 8tXz+77d+gYN7v2f/bZonUKHum6TsIkqdgj0lm8OqO2cHoAZyOygoo2oecdPghsyn4
	 AqNF5BZSXgQwM1lymn4rW+NLvIrGhQdilzjO1wtYwwlq9MVTkI4YRKhngxwgxk8yNd
	 zlx8GWuHHXTqSKAlAnRxbSrgWOf1GouzR8H/ixbV/1HBneVi8k1TkWBMdGtcXMCVWA
	 Ubxaamn6KqMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D63C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170421109640.13617.1207164328994107458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a276a959c0da7e70321eaa76e28ae8fd39fe91e78b7df61f25616eecdb8910
Date: Tue, 02 Jan 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704211096
