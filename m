Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C846175A7A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778614234; cv=none; b=FUz6BWN2vI3dmKHzNkxNAOKIsU/h+ghyZdYmdBhIJPREumHa+B+wTs4voVWE5/4SKKDlSoWGD8kSSd/eeluC4ozPoNF4AUOaB19bsETlkSuUQIuqcJtcH6TOkLr2YGnz3uQE8xveE0tWLJvJYL33VWM0jsM4Lka23JkHy4DbixI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778614234; c=relaxed/simple;
	bh=LKn+SCvJriYIsFQcGqAtvALE6WsY7XsLTrRmG/dPnw4=;
	h=To:Subject:From:Message-Id:Date; b=uG5eU8SlcFy2M5tMHogotMVgdPEbIlMPx5//x2lr5PVxUBb70UFzZgswyUX9OxKh9XvkIQ2BMQhc8WRacBoaUukGUKCffAoM8lHl5rLGzZHopCQJS+xpJ2LnROBMGZuHdKHHh/k96AK9wn5n6wTVZGzmxz2adufiPa63hZ/Z/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfbYJLsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfbYJLsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA83C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778614233;
	bh=LKn+SCvJriYIsFQcGqAtvALE6WsY7XsLTrRmG/dPnw4=;
	h=To:Subject:From:Date:From;
	b=KfbYJLsvj+wgbt0E1gdyB4Vuv4Nc2m0UtseyJYJVzmwOmifTCW/HYCfKBRVsCMbx0
	 0QeRilbUsxFbFWl9SvkQxUo6f/psbN+byY29B2QRMJfEmhTubFmzcyrkIr807XU3hk
	 BlcjU65kew1HymTCq8m0pphO2NidSH1KHgckuucYrJfPnngs9FeByMN996AH9oslqy
	 oZnEF85IkzvY+aTKuJT+vZzqJsWoIi+fr9sx1P3tWLPIH9kGoDHh7vXj4RGeUz8k9V
	 Fe7JRU6Hgqv8mh2Khg0NuypOoMhrWyPJjK5RFz/zhiTUuEhGia+nuA0EAYfnzDJGqu
	 1E5Fss+N9iocQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FFCD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861423368.1499.18414997202451907038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef8b9944fff70867e7f08e0903dcfc54857f551e03d7e6a1c3e82caba7cfbf4
Date: Tue, 12 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778614233
