Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C62F2E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750475994; cv=none; b=pkjwPpBoTMcuQEBL/8GzqYFzWfqghaNG7HIP/NKxRvYOO7rGBKdUn4gXn/Mec3GCmE9nCXdCn3zeYMPDG9mgw8bXJs4Rx9/HwXE4xDqE0G5sTGREKwujwhbiQbWmNeo9oefdq6jz+xzjpewTAXk5n4WoVuP1Gbfy/w+YYnrkWQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750475994; c=relaxed/simple;
	bh=04UGJV7LFllMdsAoEYY7q5C31apVXZyqjfkOzRcRKuw=;
	h=To:Subject:From:Message-Id:Date; b=pHhLywQoESt+z5/G0+Rt5ToHuGw2Vd+EaNFTnRr8Z24pvDsZrKqk76eln+JlCxJ12P32Q66ys7HIAz1igpLrXqgjJijkTslKAZO7K4R/YOE6Ng51ioUFmsBKeMz6KBZeMjY4HRIoUDlFu59+vhhCu6/EkxDFRDko9kZgK/H0cO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yovmy3vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yovmy3vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750475993;
	bh=04UGJV7LFllMdsAoEYY7q5C31apVXZyqjfkOzRcRKuw=;
	h=To:Subject:From:Date:From;
	b=Yovmy3vnmcJ26rVxWQcHBR1V80hn7VTz3yOhwMiWTPm72LXf1RBITYKnHAN2p7daD
	 PrhYopAURbHVnuB6g19fOAs3/Ca8K/AStKwXBB/+pwmrUSJ2NX3ghxMUfIyD+wHrFb
	 uoopOa+oT+gNzHE631wKaO45hJLtryOSjPJVe1xLmQIba+GFj3mIdUw0b0hgj4/F4k
	 FI5qyQ51nAquauiD9aYpUVZ6x3jnS3lIuX6UJqzYjuzH7+3y5rDCPvdg2igInduxbn
	 4DQPo/7V3tVZdWgoex3oGJ49XWPDt+P1mu8GHTBoKPDWgUSWs3BX/4U4uqicdtHnDy
	 5zzZXsVr4kqFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADCC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047599357.20085.5729711241327846420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e40feb056e2de5c58742326c7868cd8508d212736d77b7c70621407283d042b
Date: Sat, 21 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750475993
