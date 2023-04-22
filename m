Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C1E7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 10:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A05C4339B
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 10:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682160005;
	bh=MEuUlj5eoL10hdYOKdRASN3p/BUWD8Z9YRVsd8AbLbY=;
	h=To:Subject:From:Date:From;
	b=IxTvhGQcCsqMMv5r5jlpl0QD0CgE0UOSjcb+QwEi+9KTe3C/yq6rcaS1tRs1HbF8D
	 ze2aXMGRgpiBFDycDcfMscFaBhI9lXPsKgkpFFjHgl5Jt/MgcnVq21Ubk0iI6jSnDy
	 wNSKlj92weBh6QFeFoHGfz6e0MSSnKqtZrQAiEgxP1jwD5phDX2tWK+TinKnRoWGS0
	 7VxeT1/Z4LgOab4/W6xBv5sVcIgChZpUgeo0D6ckixGjAnVsbuUd6Ykslx5+a4ucOz
	 IFwgHvlSuaiMsyL93queHsqlzVnNtH/VMS09CSvDM8+O31cGZcDQnaWq85YDEtwcwa
	 +TVTQlEVrYcTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28C2C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 10:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168216000577.18669.8032280662061221191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22b515ad19de13136836f83aff6591d6400e2df7100924d507d924a2aa2fe98
Date: Sat, 22 Apr 2023 10:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682160005
