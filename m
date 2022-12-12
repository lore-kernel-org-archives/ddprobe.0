Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2C81C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B874C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670815287;
	bh=PtrZS0dbl/pXsmNXFP8KvBbuXkCxILFKUghFzQeyjZE=;
	h=To:Subject:From:Date:From;
	b=ll+KZLMSs0QYGKmygqx0wze3/vUhWdjw6/G0oS5ypA4cQYdtYgDjsG1tdoSdNgSu0
	 lumyoMoeFQSVehInMVPQbDTyBY/vRLZUWJJoZkFhe6OQPx0V6+3XzyviqDsseeuxhS
	 jcDDXqXNqLBtQ7piqkMKQANbhYv5fic5w2+6nzJcB+MHx2nYpxYzOETIvAo+IzyBl8
	 inmrO+XxafBAEB+F+hqCZ61jIXT10oVOK7RgywPwLuMJ7Fj7iuP+5oOm6rf8470pty
	 qom3Npof2rJBxpEyvM4JrDLCbFHNqfNnDaYL6J7DxYR7S1OfBW4SQsuWX8S4AM91yP
	 7wYbVG/DtbjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6248FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081528739.29364.2119108929705460842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87514157e7934f9ec8294c9383f1fc54ed17e42baa8fcdf31d44a05170371f25
Date: Mon, 12 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670815287
