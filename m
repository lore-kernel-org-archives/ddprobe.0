Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B27D506
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBE1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677628565;
	bh=fQVLj7KAYhwjNSlDsIJ/SzFRZKXKucYucG8GlJKhxxo=;
	h=To:Subject:From:Date:From;
	b=gG8ZJ1AfOrz0qR3BJwP6CEHxWHa9mUHR6tjmm/dsy0iN5MtDRN38f7Heogz+j5FXY
	 KvBo8WSJjexKuyT3fx1/ysWtoX+Ot9F3A3UANCcOSsmgBUtZ4iS/FufS9xFTelD+Rp
	 1zlfGq/9Dz+giWV6PZNqDTXJaHdG6eDEKkea8AqlsfqxDRUehrqbblk9NGJcxpqDrD
	 Rqw38o2SsAnzdafBgQzOC+RGeOTmzit9MTmBjKGJsGsxxVufJpCbHgEMj/wBaPWBoG
	 5G9Db55tCA4oh+pdsEcEa+EuZuWgAJy6dpdA7w4x3tDYnNWULsDj/CGReRbPJnR+T0
	 Q4xpO96Uvs1cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE1DC7EE30
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762856574.14199.16945097913795117130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a372709d851b93effca13ac918f4d74abf1fcd4d51ac7019090fbb9d52e6ef2
Date: Tue, 28 Feb 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677628565
