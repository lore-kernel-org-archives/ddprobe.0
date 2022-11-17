Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC24C8BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4C2C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668708654;
	bh=WkE2lFi4jQOkb/v4nyIgbUoXvdNnLjkpT18EA4ljtXw=;
	h=To:Subject:From:Date:From;
	b=FBqeYi2GKV9Xde9exYzwMCA5Ei6CpaWp/pS3jcUTztSO5QJ9DLW4EO0rQbmz9RWoU
	 OxI9X+k+KEbEJzokwjZaB8DZXQZzutTGdjxFkV2ZJB1aDM5VEYW3S+Y32F7tNumrBO
	 +p9xYAqwKI4F1oANFEKaHWHmGKiz87dVqikbwh7GPh7B5zejMgsslJWFwgMoPCUkxE
	 lA/3dfYK2t73w8DmGJwQhHGZ2XFQ1J40kh23nz9iGBnBrCYj9Ba3UpgKwVkw0LOLSH
	 MnvBm5JkzDkIUPh4ICQavq+93eUh7OgkOEwF0Q/w0CDWWhRmYZGdOVyKzxNUrtpbgl
	 8L0m8v5p9fM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516D0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870865432.23864.13295599786183490103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7105d749185494da37fb64af7ebe797a41001301b6a209b18ba61f99843b3a
Date: Thu, 17 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668708654
