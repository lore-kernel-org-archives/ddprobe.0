Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B63B7F9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqs1KgBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8615BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704854296;
	bh=Q7aQfcaeL9Fx2jboOenqIAaJOS1tPdMv3qmaxn22W7w=;
	h=To:Subject:From:Date:From;
	b=Eqs1KgBeovmb+AWA8WrGaaQ8pc1gkzTLr0nI50iw88K1oWAsUB3d0cnqSS2tTeKVH
	 T4XbOgqlLQa5MM5Zik+KnNzMsfo/T3GMF/djmpH4eQ0vjkLdEobQlyNuswfQtjPxRp
	 Bq1rLYfxm6sP0+ewzl3wzGAx0/udgZY/CU0NxaD5cZ/JlFBL/OJDcnpPy9COKbHBQ4
	 4P6zwoRvfQQqnxwDR5bugx6vzflhdTIlfEzbgAMip4PlpsHkgEtjmEURmu+Tv4Ydug
	 244AOkF8r8cmveMJCCN/oxs5V9oHJe9ebQ6hVtc7OvX0mlz5Ys7Pld4MjH3L8iQ84t
	 R7RUc175cIf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66603C47077
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170485429640.22597.11772177436622731377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a238e39cf177f798baeb90cba6c7e9ca957055a96cece9b12c7ec330ac23418f
Date: Wed, 10 Jan 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704854296
