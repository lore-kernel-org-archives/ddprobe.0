Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EBF80A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF18C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668231654;
	bh=byWtO9AesM2U60tkdl35e+1Ny6TZL81ymYuxMibXkcA=;
	h=To:Subject:From:Date:From;
	b=J2dODDl/c+BrldyRJQ7NrTh52gcR9rTpv3vk1dzB8gvnVK85FG+GdKx1XesT3/IDV
	 +84LSI1CuePOXyKXYlAc4Ib0hZCI9EnPjLU3GMDGr95YetUSzK3BupOu/xRcxSl2tL
	 eGdHkRDmNzHfKn4GptF06axsziU6ntwu7uKY7plAhkYI19xAga/WmljsHZw/O4laQg
	 9+7jsWYMOw/3VbQzii1mBphQsx9Y21Asz50njZcAX311g3iFM6ZZGGC14/BCU4YLqv
	 18QlKnHarFWCx34XxUJKFH6XIh5kma0Q6fqScW78oJKiatTN9hUtyMf4ucVtfL6yfn
	 j9HE6ZNtOTcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A578C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823165433.13554.14571800985794322735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a38f547d1c8cc9d29f81abb9fb16f1654e6bc4c2994303d2962cf8b43bdc5f6
Date: Sat, 12 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668231654
