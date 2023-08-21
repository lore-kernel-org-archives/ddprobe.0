Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1F58460
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1563AC433CA
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692633849;
	bh=40geMCLxIyWYx/sOwMzAbWkEhcB0UBW1AM+US2w2dNI=;
	h=To:Subject:From:Date:From;
	b=NpB7CYMiRoQu5ye0qosRhwjvGEI227wnjap47inx2lu5LpoC/09X9qZ0QHuqMlBD2
	 HAXE86r+Co7p4ZqtK08oG0R05ZW1ip6/JjbIl59TnixQJOAojzKjqxdmiwqqoJUv2E
	 HLSlNw/5kwVluiChxh4tyBJ/kg3zr8cbEdo6d8+n34UNSCtHhjUrctH+XCMfrVN9ZK
	 T/V147G0c6F7C9pAm882A2E2XvLcMwl0kDyf2mrD0vIDFslR/QOOdKNVJ/Dnf7OK8d
	 wiQKsMNMdqL7FIZI89X9cDJn35rIukWwt1Ke74SeBia3D2SZSScenoAZUPoCWiA/3b
	 GswZXfOohGqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5795EE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169263384873.24811.7300428937607323442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61983947fbc3f14460bb7ac84a22805ec4718003f3442a29caf02e79e14c7ae1
Date: Mon, 21 Aug 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692633848
