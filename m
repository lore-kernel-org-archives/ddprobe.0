Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D142C7486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B33BC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670017854;
	bh=pG6O72JuIh7JiSHrH2CRwyZQHHF7c4s59w2dfr6cAeo=;
	h=To:Subject:From:Date:From;
	b=Zcf7h9Ebkufbvdlcpfpb/FYS3+ETC5oRDt2KRUIAVszOe+2I/ZZ51136VdOi/zOil
	 jIuRpaSPnSNIvN2MsAkS0YcRL9bkFmQZw2ITQDIGluvWVZ8KEc3buEGuqLznghUI4D
	 PIrYERbYalqII157wZgPFwwWnNWi6SMknThR1W7kErY7O6x1zkACkhnWWvDWolB3ea
	 FU2STi5epEuKNhcfgSf7zwHxYeaRH9uU5Yq2vqZl0yb9cr7GleJeqIUYq6SirJ8rj9
	 co4WVz3hDFNclhRYrkalo0tPwlNdiohvehFpkFqbz993uSaiHJaqISlayh7R+Vfp/I
	 FNpSJ/oQuBY/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A5EC4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001785434.10859.6297073859424807924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad906825ef941dda27c4b874867509fd4317f052f5e0d9d8d98ec6823a04f905
Date: Fri, 02 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670017854
