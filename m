Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ECCA20
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3AAC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677897425;
	bh=KaWXyEjX+hLBwCZ4qY41hHlMkg3l7rj5CzG9wz/dP7A=;
	h=To:Subject:From:Date:From;
	b=sApGj3DBVXMPLa5iT0KdfBNaOWzrS+KDHeRqXLNLSEZ8csrhI7gYpOkhOuZN4qE0q
	 J4+zRw8n+rqN4t6qvque1DYoaNpmX3k7a7+c7k/ZEvHtujNfVZzDjzKgsTSl/xFFn9
	 eU8q6N0QxOcmPQGHTAWeXUoY1HOJsa8uti2GD4FQWwcV3e81RjuT9zz7saRu6XvpAX
	 Y0YPtRg2rXb4u580+tubs0Zv40h/LthEvvBt5ca8vUTENPe7dfFZk7IBGXBSa3PMkK
	 4siKWSudm622ngegW/IujWGVkwTdiCTxts6HZNVNPZHUF+bzcNiIe3qYfLsnUrzemS
	 QrYKNse8Ow3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3152C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 02:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167789742579.5229.16819404510361506486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169769c1ce8774d99b75a3f39458f21bd8e20af421001c14741998b37b0a9f7d
Date: Sat, 04 Mar 2023 02:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677897425
