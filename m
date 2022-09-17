Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D790836C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAEDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663375253;
	bh=9apuIJ76FASZMS6dCIf8dPB8NyCGN3iczgr/dIhfiAc=;
	h=To:Subject:From:Date:From;
	b=JK/7QY/gIBX49Y6fViWAPlGd/m9RgST5v3+A7PgqTPpSk5yYtlhUeLw1pU9fQGoXd
	 MEq1rDr1mYtgwaxgiNjS5ZakOJKujEvvi95PzbZDgCKcm3ap0fQLLTHbzGa7vmCyIO
	 pTQt9gLBMn5s2HIqBE+jD8lGRwWuheWwIStzxOGVGwy0mD78Yc2nfv5Nez8S2tyYi5
	 lrG00jML97GeO87YUTUl+AA+TA8f0u9M748aFd+V9pyF84QEB6kEI0CNL0TiqGG45Y
	 NNbfkrxVv6CxDIaJPQQJKlSJ7AtPgFtKpthr9w4sKRW5GhxWI+oP7rn7f2vcTTkHRW
	 mZlNPdm/GjjWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7CFECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337525334.23970.11770316305947476599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618cdbc8352617a77a91c91d5841015119c97204e8c989c8714a6f747520fc21
Date: Sat, 17 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663375253
