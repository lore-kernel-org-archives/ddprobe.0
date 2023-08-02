Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5127C6FC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A29C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690972328;
	bh=1ktJFJdt2WlTUl0pe8j9uOBt0/G+y35tos0DPKZIr1s=;
	h=To:Subject:From:Date:From;
	b=ddJMKv8KashnqhPTiwkT4WzTcAwO4q9A9YA8egfqQDSAZxJJrhNGMpMwLBgpciyeQ
	 mrsXrf+lrSEzQZTfexJI6QSfrsFW11mEwSHCfldr8z738Wq+kN7SStuK/G8HlykYXL
	 f958wVwByFdkwp5VsPGyiwgUWEG8+bZl++83Jwzke2X8XrjhfeBbzCqh8Q0b/x2FXE
	 dZrMPhv1q0Ks/q61QVIf5/+jvWvfzQko+Wkmg8FY4SBpXxTuLIduoRoLHdLwnga7Zc
	 MLW1zpnSem6gX+KBK7IXAvUr5qFOxJPmMnOiO/Zzij0eZnuc9GM8soegeaKYd5zx4O
	 PCfv5VWoKes/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA953C00528
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097232869.29122.13594132647235411540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978c658ec3c324e3153509e011a04cd7b3845ffd56d67ce6925299c42c150e9e
Date: Wed, 02 Aug 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690972328
