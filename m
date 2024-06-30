Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7464D82485
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719789263; cv=none; b=NaC3B6eZ230G0GUUqERJ8Pa0azk4lcEEsMPFQEc0GRnfFY1U3kcF5o52Hh3fvd/4vhQ+WeKeuUFmZtGkutbb6MN2s8Q4iNvseKJClVrkhvuaCE90wrv0jXix8XtwGVVgOgGdNmEr8zRSqGL8uPsTbf7xCFPiHkZ7ihcohafyezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719789263; c=relaxed/simple;
	bh=AV5EPlrha8Fl3oZP/8H3I2UfpxvCNdKPe6un3HeHN1M=;
	h=To:Subject:From:Message-Id:Date; b=A3sG1uX5ZOMoEzmFomRmlQsQu3vI1jnK9qNBOZ00NqXt1+kZG1M5o2bQeOv9OCk+MSrn/ZjbpCS6ywoElBtznj/W1oRNgR86Xd7alwPsYvL3k3OCEhJz+DH+itmHaNq3zI93NAtc9NOOkSciQtYgC/DIjCOewFblnNdb4Yzh1/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjqX7zCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjqX7zCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EE7C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719789262;
	bh=AV5EPlrha8Fl3oZP/8H3I2UfpxvCNdKPe6un3HeHN1M=;
	h=To:Subject:From:Date:From;
	b=PjqX7zCCYzUABX9VDKS4xmHUPuqQv2rGh8chNoN+L4jsDTHtNQ3i8URAx6eaPrXPe
	 AYgEwT1HH4/vbpqMuK2mkCYICbjdPLuJJOHP+lSNM5TIWbxjEMWlk2NFcp4uduyw0b
	 cQowRO4qmGabNAd7PcvDp0GrlJYaS/irwrPkqTaCfsq+MOsDcX/C6TIvZwRIaNF0oj
	 yWzIHk0q8oqn/e7HOVqnkgLLwdXt+HAvVw0SS1oJ5/wLoNYoAouTxK6fK9L59XTdL9
	 p2OX2dQArWmI9o+XeJrFAFWzC+5HMk2u8eFxIyKc5G3WrCtUJ/0ppfHjP+t1JWObO8
	 qEoRXdydwGWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4D2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978926276.23257.11962607810517005860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359ba29309e598f556322cf3397b4d2f60098c798c4a72a9e288c1d000dff521
Date: Sun, 30 Jun 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719789262
