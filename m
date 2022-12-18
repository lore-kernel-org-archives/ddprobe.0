Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0287E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD6EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671382887;
	bh=dEYTQlVit+PYvNTZUOBkgnfB531lbD40X+2rKjUh+/Q=;
	h=To:Subject:From:Date:From;
	b=BdLYVjpcnxAmvT3n1onSeBgM1s51xLaYNXXo3gjD2MNeArQGlYx6eifHPTQJZysvC
	 GjBqgP8ZOfo98jcnJIwE530qWuX3WE0RX5Wl/XnZZ3to6uS6wTAz7V7LtWEcOEPN/i
	 x5ph5WUtWo0+onT2F1r76VZiZK+0iFXc8L0pvR5STqKNENGJKw/3CQpEL3UvJ0KLy+
	 rU2M50h1E/FCmlzEgjM1RG/Z6w7z07Lu6b2ZTMerDgwE0lIk3WTXXPl2qKcQCp9R6H
	 3ZfiG8rWdkdRXJm90m0dgCv2UZvYBDMLkR2wTVuTyQtniwWn+F8+taoUSaUViieOo6
	 Gnf+kE//zU/YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A51C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138288741.19659.16837992451647315476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b62676d9d121730171eacd98f0c03672c40b75fd12edcca1f046730dadac9b
Date: Sun, 18 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671382887
