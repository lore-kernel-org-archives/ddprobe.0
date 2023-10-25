Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DE82AB2B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTIy4yG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95DA9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698260296;
	bh=/qd0DCXuHCEF0JL21ZWSnXMhKFMy+L0FDz2gUbfC82g=;
	h=To:Subject:From:Date:From;
	b=qTIy4yG016Ec0dGnQmoGOR0r3wO9Sj6HEtkmzecC29ntWLM+e7iklP86X4TfVOD6h
	 WCuOu60V2AzJpSl42kSm9DKdu/+nmZ8Z3c/6K5J3m3+MS9dG+yiV1eeGMrSdQyB0a2
	 c0yfQy+YZktPQ2iHr2MOuTRznlMoo8YuXilyhLTWR7OSHTy66pAHFpxnFPucJBSZpQ
	 Eso55sn9ZTPyKnd3VCGsL4kQbEAy8Fsxtel9EwM1MMs9Fy8c2l5lE1ii3hbOj5yzTL
	 eWTYl/+OmNc0v9n4a9NHARzIba3QqeZ/+XxsvSf4BFu7haCsWOBj1BTr61A7+CZFlf
	 b+HpYMB3JGRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A2DBC0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826029648.16931.4402321633295292154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad068f55c2d2345d03a74f07e4b5dcdd489c391009896cf01497d153284b61f
Date: Wed, 25 Oct 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698260296
