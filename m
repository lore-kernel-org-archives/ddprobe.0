Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679E914F84
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A76C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689187748;
	bh=WfaalsnAR6lVlqMF3QN64q7wiOWu7I8SinxK9ITfh9s=;
	h=To:Subject:From:Date:From;
	b=L9OOiDweJ4fxwRrxHHFSwdawucozs/n8LpUntu8rN+uEZ6Svn+TdRpPEXRdln6Rc1
	 l5WM/hnU0cvycBzHT6l7UEM93J3Ug7EmvT7jtp3ngg8OfPC07XSJ6Vj7aU0b8fKClW
	 otC7XqH3+YZxWyq5cI95hfzpKulBG3X+YQFNq/AfQ808lwHXoiasfQmaNLqFCOykwo
	 Dd3zgOYBywVu+R0SVX9Gn+E7ZxgGBNPdBv7WTQz1eUbnAN+O4DjR3Sfgvv9nhtmEe4
	 N1+60OP7GgwSIFPUuHRD9ptatgLWFhIRQjXG9XLuFhmhJst4hKEal7neE+SLNjYDRz
	 Jdjhi8x9pLSLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F7EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 18:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168918774868.19231.82727722518837230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8c16dc30785d35cd34e5ab24a201f651a499cdb9456bef3bef55dad5d4e52c
Date: Wed, 12 Jul 2023 18:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689187748
