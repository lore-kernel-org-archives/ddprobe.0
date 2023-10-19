Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BBA14F90
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYY9UJS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E879AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697709492;
	bh=Cv5NAhTI27Jqpv8Nm9WGd4Q06tesEDhCZUGeaqzznJ4=;
	h=To:Subject:From:Date:From;
	b=CYY9UJS5mg7mh9BhDkhAb/l7lQnICqyV4mOny79Na1qOD1CKDP0kIr+Es4U369k8+
	 TOTz1zTuQwVhdP6lEwWYNvJN6BLoKH/OL1zuba1lkppbf28E1cnJbQUd9UFqk/1NSL
	 h4yG3YPxT9WsBsJIgveyt6Jo3o2we/JZhaIRZa7L/G59DBAeJ+gDWgOZnCVgsrOHJu
	 as4A16swy0jd3KgCEkAnb6LTKnfK65brA/TZApYSEASQTie9zQeTEpD3gFQEtE7J8I
	 ie6/AsTzX29YfAXK1kub3CT/nQrQs42GWnvyJ05qOI/89AV1bW4hFqq3Dsu7f1mBKs
	 I8ujHiXqh0Lmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C482CCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169770949279.14088.975342023659872165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c6f75d09b5471ec1dc87d58ff53dd38ec492ecf6e7802431a2a3396580a048
Date: Thu, 19 Oct 2023 09:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697709492
