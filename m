Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6075247
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHYjt/r8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96120C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699307896;
	bh=3kUAJkUbalxElZw5ir7RrOX45J1Z4LMHBUv/7OExFbQ=;
	h=To:Subject:From:Date:From;
	b=ZHYjt/r8g+8h9n2TmsI4be4Z30bWsB1Hfq9VytwjqWIIqaDYHJxmxhdX8p1WXTL8l
	 gn+SEjhMvXAMQZQXRYlhQEDyZ+yAfa1old+hjOnQfrOcAASsyeXxSAV78wmmBoxp/t
	 wLNhxd1G22DXuVUVncdvArisKIFOQYClYryOntu9gi4nuHYUNmueSH5aXS8hsYbBy/
	 Z5FiLjnSqxQtzkPhJGxiRvK7MvRab4++eAb4n5tA5rzK+UeuxK/Udu1AigtFwIAA+z
	 c7l5uIgqKMYQJcOtUeCvgG6mHTdgi0Rlti9xfUW+ZK6f7ALLJUatDOWmOHFdirt21v
	 lGtoN9fkuKlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725A2C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169930789640.13952.17951229986810956068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f919f2017afd34cc5c0cd082555eec5bd0d606d74952acfd115241a4cc2f016f
Date: Mon, 06 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699307896
