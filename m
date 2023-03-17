Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1FB2C9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFADC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679092325;
	bh=nn6FpVZDriHF6EoqSr3P7OEIK7un/0W6fev1LPbhds4=;
	h=To:Subject:From:Date:From;
	b=iD65F0ab8iUICau2Ou1+tgokYBLOnJb9wv2m5VNSvYQwChx8JKqYjJ/MF4hwfgbN7
	 hogjmAOKuV4QHb2LSIUuhcdr9q5ErQCbSxyfJxzSgJY9HNFcZTo2U6eRPhsgK+jdcU
	 K+Xc871kxsPJ3LshctwbCQUpoKMLxQOH+5CQDdDvzWYqGWlasD9LSSJbWwO6bs+ERV
	 orK/gH8Sw2iDsC6a+6LmwNdNpVAtdfBIp9kTF0CkPlAADPVvy8clpVFjopmDaxrXjY
	 Zzw4NIeJSfCF8VJbTrYGTL3YefLYZvykQrhepXnbUKYJ1R8a9Z8GV3Vw98jn8jdaXy
	 uqlKqaqCkKaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF582C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909232577.316.8305108210463657590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820cdb4c149c062ce343b0fe52b6b687ce013d4e9221bfd2acebe911bd5a80ba
Date: Fri, 17 Mar 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679092325
