Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5991DC07D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749882594; cv=none; b=IYpf+KRpULGcxjWmotIlcMXhNz2Sz21mAtE6V59QujqLGgkGyaWRNb225uPf4ChaTPHVQE01IgP/5UAMEQIeee6WFxoMraI9U9IuVx0ac6ijAezI8mdfpm+dUm3Te/djCCOvv37aMTtCnyc6hLfrH0F90of1lK+ODReJta6Mp6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749882594; c=relaxed/simple;
	bh=XcPRR128+YZJOcjsqDU+LXQXEui4eLxGmw73YNduRNc=;
	h=To:Subject:From:Message-Id:Date; b=XY+Dkj7PnK0Onh7OZK7K87wFy4uh6reFd5yrCUf4GMPMDH8I5DL8CVmi2AOta0Vwf3NZRzA8qxeoNppGknZX9R/tILXuIp8hkIMjXLrQ2dHlAbOKkTfvCZHlFixVExZVDDmUdUE9RpPyVE6mixDaNSPnCOkobbJ4da0FpLvziI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzXySAXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzXySAXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6067C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749882593;
	bh=XcPRR128+YZJOcjsqDU+LXQXEui4eLxGmw73YNduRNc=;
	h=To:Subject:From:Date:From;
	b=RzXySAXA4iEkr8cTDtZ2tzJvy0sYx47Ijr2Yh9Bw58YWQ5CwFpX/HYwMGk826rhnP
	 mwIXW7NaynV/L/Drto4Dq2Zb2UNTI7L6yhZsrW/RiscT4/Z/5ofk8OOsgI+CN3MTWc
	 P8KTrNoPvTsZoCTgF9/zd1ldHnmZWetTy4XOR0QV0XWUqzXRhSwbyJFkYsLfDnzIaL
	 oYnfcMkwQ25klYL3vGQkcgmKGKd1h5kL57JJGawwRbI4LV3c7a07aHNFw4EaKJjPp4
	 RBLvtqgPcez14qUctIUOz4t9YlwQBZd4V4BF3Vy8uYem7ptqHVvRVYARsOaXjn5w+Z
	 WVkIsh01gyaHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0DC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988259357.27650.2558369210752162114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4454c15465701a760c1f58df5f9f29cdc44b7aee0d96ed3f36e5efb2a5ca7a7c
Date: Sat, 14 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749882593
