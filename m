Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6427010E9
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03B4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692754448;
	bh=qNxlilueCXaO3WTXeJXVqljAKlM3o7ibdzrDQB/GQFU=;
	h=To:Subject:From:Date:From;
	b=CtD4RSqcJhwTenUE3/dNBJBZAMkL8X5EkGlI5cZcqdLdQ6aiFLBiC8s4xAdjuwlwi
	 1ZegRqznkARPZgUt9I14+WqeqnMT5oXsImiFYtY1tj/yYZ+iXRAJDsV6Nfdrg8XgIH
	 6F3O55Iu3rUSmFEdvUyHlB16aFId43e/N1Cr4KYZnJCdyTLy0zWiDVpwOKT68Ph77E
	 4PK1xw4Ie4U1f5d43f94b5fSQFEveESwcgUdzWN4V6awUguiB8u1Iq4wrhr8aeYdT1
	 nrQmjNpxd+kakJZBNuO7sTAhzZLcVIOeTOg0YydWa0uXTzwPu1V5d2QUicvvdnvJpI
	 GKXKkD36NYSUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A20EE49A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169275444867.2147.6525490568540969109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9415770d38315e8d6cb4f2f4885e3c3b6fde648192c4d8f3aafd00c943c271b9
Date: Wed, 23 Aug 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692754448
