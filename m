Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECBC12E48
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721195723; cv=none; b=ZpAgSVp1mtBc4cQ9YpWLQj2Hmg+ff+/vL8X6MOSILavAgdwzDdR0XQfVF56wX1sldUdMnK1ahaOAYyqRHR6g/meQhv6d7e5Ccg6hku8FkNreOO7ISW/f66h/MWe2zGa5UGI1SRVFi8qftIJprp7vQkwoydlGuFfkS3N7AAyD8rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721195723; c=relaxed/simple;
	bh=IN0lZR5ttglUvuaeRBHpkCfGBWXNMRXQHVGM8P1v0Oo=;
	h=To:Subject:From:Message-Id:Date; b=p/yt521pYbmV9vxtJlx3taPWI/FpSRJ187fUIMxdTYWtBINiGPtX/uMhvPCM70d5hpMAksaLdOXlzGjCbD0jC+2JUjH2dWhazvUui9wfFomFT31zhUL4xC9dk3mtUnXr53Np4bZc3enf3MMmdGkbsQJR6Ps6IuXNGyCG7gA6vRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjvyosaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjvyosaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED88C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721195723;
	bh=IN0lZR5ttglUvuaeRBHpkCfGBWXNMRXQHVGM8P1v0Oo=;
	h=To:Subject:From:Date:From;
	b=DjvyosaW8vgHUuaOE0pkiZhMxL4WWdKOdCZAB7BaxA8NNLYIBIWeLEpkqbH1T++9o
	 TU8ureI0AbX4utDjJRFPoig9+NJtuAdox2LFQKtHRrZpEqjxfTzKgQupvc65avhaLD
	 1RX7BGWrhDYN0kCVRy2u8SSxCW39lkhni7vhwZwZYcPJrBk/pQpPFh6nE7SFHwNG8c
	 x1RiprEdVZab2HKV+mnUbJoZ9rusB0CUg7DNclbfN/xY0gP15mnU9SF8hvlkPpiCpB
	 eAiujkswvl4yVP7/uoabM4ohjHN8xMjKoRcEbILx7NxbjTDupr8wW2KV7Wwhk2Qg1r
	 Bsf4tg9g6YXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF0AC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119572281.12188.10458419933375366738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da69f55ac4ad835525e09e75da37d98e8d83c60f5ec05ffe1e1ce15156ccf335
Date: Wed, 17 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721195722
