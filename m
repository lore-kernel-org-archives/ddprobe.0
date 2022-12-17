Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F1C8C18
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E70C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671315087;
	bh=xkeght8P8rJzzd0e0hMe63jG2IoLdkcWSSF62C0BKeo=;
	h=To:Subject:From:Date:From;
	b=n7+iXVvE4gNtqiZVWWjiKubY+sEJcO3THSQ7GvKoGmLf11SmL8JwMSiYx8HvjYZeE
	 062kD4OInTkqs8XFUwZL7cFPFIi+fUXxsRBs8Dtj/SQr23x01RcNuFlue0cdqiLg60
	 8+s4VWgk55WwSF0nKaB53nG6r1FI1o3WqbHdgOCA2xybUZ5ZaF4gqn/RFU5RZYxaR0
	 XE9S1vtTUHvh/PRDQKpp0XTq6XHlaXSHxk8fIY34IV3rW4QnKVLlv7guW5h7rXPmqs
	 ZhOscmYo+TYezKGIZMz+8lTA6QUYOMAveD4OwSKV1E+b7y5zPcFIvhCsipRsinM5jh
	 ZQhBK/DwADXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700CFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131508744.9371.15549700310144804930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd88b721bb08bfcf67e44eef49419a212839c28a83a73e3f52a12d2801afd16
Date: Sat, 17 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671315087
