Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E032E1944D
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCrrFPF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A64C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702635496;
	bh=hDJdOjYg8VTCtbTZP53r0usHyyS0vBzOxfEvJRrVciw=;
	h=To:Subject:From:Date:From;
	b=uCrrFPF+Dh26xlzQCQ5AJS3/DtHVg/wMtbRHa+ronRCjYc/7hTqucBr2Z//fPbZ99
	 p0aF7t1vQp/kv0rDXgHBc0joK3ADpXcOPNL7VTKYyVOst4Q6SdXyRCYvJ4egwZeoEh
	 PLGxOQY4HxltKmjNJjMe3CwuNWxoD8WeHvWhhtMnWfFVKZqgqe4c0Ec3ubV1wOfVAI
	 rxdnAs2CNY7loXzwTEf82ZxOMjZBXU335xWNPhpaQ44M2reHRUSYBC+ac+esyiu6GM
	 TlHe+b9ezY3eb+z8mnhc3yncbFYZSj/cpPmUd67jhjLwsounBRlzAdRn+qXZfPAAER
	 88QOArSGH9nOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2BEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170263549636.26004.2072478452866549168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd1e8ddfcb8f38422d3008b206382696411765e224aa7dc2c8706ed5a30b84f
Date: Fri, 15 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702635496
