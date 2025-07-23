Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B526CE3F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753306194; cv=none; b=FmNiG+9wWhoHQyGO997RJVQuUpEejxBWLgYeMN10oY/dxPbQJTNvxFuETnHRtG4ZspHmWyKmpxXsyPmt56+N454ia0ek9euAxzswa5VrhR5aDw2kGhGbAYL4sKltMn0eACVFz+VVb/b/F71sojBYH37YV2Oq/kaFtFWZzFviPPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753306194; c=relaxed/simple;
	bh=4iimB+Osv3wqUKrxbD/WFmacFveZsQFyl0QH7ZliAe4=;
	h=To:Subject:From:Message-Id:Date; b=oYRaSrheFiT0QWoQ3NQchXkhuWr5yeXz/1MWEo0z7IMl5a5sv8+tO/1kmXBYLpHj+IZ2MCjuualIaSMrW9Ra3j+aBcuc33zzugzEQAvdjJ3C3UmVN4tIh7+uhOxXB48hFdwaASn0AF+aOPbU2kTHRQJcXWLIf4MgCCrwXXiRqbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzrSJGS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzrSJGS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753306193;
	bh=4iimB+Osv3wqUKrxbD/WFmacFveZsQFyl0QH7ZliAe4=;
	h=To:Subject:From:Date:From;
	b=XzrSJGS4Rn5NV8h6umelPKsqjyoWUTAMRmwZ9xf9zTUI0s7Hd2qfnKd+iy/5Pl8wq
	 WFYdCu60/xhgtDQaqbNjqm5XjL39NX9x0tO/QIc7AlGQJ321s3bIfBvU6A8xQB6yX5
	 68RrMunx9l5frDQ1e4jyPxugwF8XVYLj27LioHY0AF/Y5wVgbQXnCg2NMcyKr/drFO
	 sUZfcsIf5Xpc57aXfgCL/Tm+sH0vH6hvBiHHUxOEO7PlDROVgFq9+JyWchwzJQiC0y
	 MCvYlVpnxne2eAR8D7uIjrWuecLOxJ3BYaRG8coYenLZFExGFNaZRJjJejA6NYbjHR
	 IL01M6OcOgNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EEC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330619360.2519.6917318418659678053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34adad18705986141beebfa652e38486b963707b3c99477356fc2fd7d2e44ce
Date: Wed, 23 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753306193
