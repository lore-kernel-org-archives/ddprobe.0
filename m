Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AD615AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68522C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667048454;
	bh=IZZRc8HDR42spc3L7Z+6OLz2ma1xFUcecaYBFt+oSvk=;
	h=To:Subject:From:Date:From;
	b=m9GfxcJrtcZaUjSkh5j/a3sEfeB09YRIGXFSyRZsdS3Yn8/X81eqRzlnqn7cj0Bpj
	 UfMSq5KngQ8eYddJT598gDtBbhVSrZYkCHvkQoyBxV5hAYfpRL/8zsHdI3vewxeRkq
	 RGHjbNP9qdRh+oEkssUEq8/8n7XEEmFRr78ANXYaGyFhIZm5LpUqnVD+zth79naofW
	 qJABEUsW0pBSwgLYzcLAKUb1d3GFo4DRBYObplsVzXzHEUz9DKj7pUP80vNJuUbxWr
	 MgODddTfq7RFleNzJfKtFJwYLiCSj9c/1dh7pxV3cA+JUbvDSBT0lsZzQZnKwz3fy/
	 AbfY3IJ1GSU6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D76C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704845432.30379.15759629267845793415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d86e700357ae7c63260e20cf5cf4323bccb749d524f9ab84ead71c4457d80f5
Date: Sat, 29 Oct 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667048454
