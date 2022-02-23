Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6C7C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645621285;
	h=To:Subject:From:Message-Id:Date;
	bh=VNaf/p7cjBku+Jeo2d6iUKBioC6Z1cz6asOsgTTOmjM=;
	b=Tbo2eRjox8si6HzduvbekZByWcfhIEfj8Fcutd5NpcJ6vEyi+gkSn7ubyvA3dY4B
	VT2fj1QIVlC8PUG0uxfHGB8+L9U32AOQGGXrYoGLfcENQ3NcZoRpTy6QdL4hU1UWFVG
	88kOU0afc3YSfL1CSExRKah1tSmiZAOLeVJwodtw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645621285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VNaf/p7cjBku+Jeo2d6iUKBioC6Z1cz6asOsgTTOmjM=;
	b=RmBbjbaIMpdsARkocJWzq0BXUWkzNiJiOayJ609SiIKXbS/UPchusQOdRjSH9rGH
	XEHlVwzF/3WhhG7KMS1DVH3k7vE2y9Mj9V2nbFyZIKymxhbwFNiTaQgd3ycLi92a7wP
	MlRRIzbwXWNbexsP25Cg1pG79clS4XZQ2Y+Whhy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26ac1018-d3baf793-cb29-4ede-a09a-b0faddb1a1a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 608ac1eaae2e5bff24fec7a4abf8d03b72e1bb77975accda40523fedace84c00
Date: Wed, 23 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645621284
