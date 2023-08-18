Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E895174FF
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E234CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692402848;
	bh=oorU1xCOBOPZG0VuIyMJ9fqtOZrUFzvHLuyWJezIr7g=;
	h=To:Subject:From:Date:From;
	b=LzqV5V4eUFzK1KtNd4aEPs0MJyL3AaSsIYCQJX/NuwYe6lYciUVFw+fPCzBQJnWd4
	 yA3DAwQe6l8tqOoGY+HJXLa3PG+mM2OWzThXo8CoYLbrUw18t7knoIvKJM9QzoF7wp
	 Rf0squdbxGpjY3Q3DkB216Ipp+geCCAYPsXyKE+GlwpMEceALKm1XosedP7ScXHaFF
	 l790urnsFqZmA3xXvGf6H6EBYxeBoKYuxc8rY8xDwmesyCImFnUPjaEtc0Los/haA6
	 2DCDsVbTcfD8SRS1YJhFFHW1Iczk/NRo2+0v8K7PKz88qikcP4zhrPB4J7MABeZzMd
	 FaRYTWkNfhsBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6509EE499B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240284873.9983.9399951875283258012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87560a525bedc5c2fbcea2ef9c2c7b7ccba9c9944804ab4a4cce2535d1ddb0e
Date: Fri, 18 Aug 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692402848
