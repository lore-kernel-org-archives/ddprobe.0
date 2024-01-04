Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E0B28DA5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPN3k07T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93BCBC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704391096;
	bh=GOlKrYj9Q8TII6XreUFtB5SrmYtLGIfwgROx6SxRG1s=;
	h=To:Subject:From:Date:From;
	b=YPN3k07TLJz64OBP94QAqzMP+/q+/r1DjeIxi7a3BQi+42CzwrLc7YbwJqjYkN5AL
	 EmN0NjoOHb6KBNmUDiEW6t/sHAUE2RgtA9hwSjE3KeTmhXLqyTyY/bD3iDBW5cw4z1
	 7Vx46srxgyqFDhvgWUqYtjNWj2NjHKvVjFoXAd3S8TGgmOrJRakBNoqf5YvXtI/7Xu
	 C7U2iCSLK78+OkZ7lodIs+2uLYhzDhpi6OdfvRIQ3K9d0KKxuv9QW0DWIeJfuqOIUc
	 e8/H5S063+CzfqCrxSilsqQJhwTaxVtoKiQ22j+uxDsqTBKjbnkdZBWrt3R+NF67qV
	 x/O05JS0ss6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7013EC47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439109643.14211.9726883156530259263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1083246d337ddcfcdde64adb1fcbe739799a40392e6ab2c2f9e168f9c2f033
Date: Thu, 04 Jan 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704391096
