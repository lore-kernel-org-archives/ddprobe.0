Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F10A7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 11:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED46FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682422506;
	bh=HGTq9Na8tNjLoxhTlhadKvgiNYvER9poOJyQuZI1oWY=;
	h=To:Subject:From:Date:From;
	b=gfX8qo3hK4TEbaIChkC8BJB+K29QuqGyp8U4pI1GxtNAZ/LzQOula0gGvwZquV+1g
	 7KP05RvO8tWvnlsp7kJLGpkrpe/3UCIwnHjBHtnpXs3XmZGzwIEwNJhYRPvHRFa30E
	 +4Giij4AFF9LYPV3JEHOAsvO3xNwa/Mn2XJVPDjNOcR4g07g2Ee/vA9HJETGqJaXDv
	 kIhQnh7WVdj3EIoreMu2vTUt0wld97P37tVUo8xyIDQQ8ov8yJ0AHWXNwm8d8GAJ9I
	 zIdJ+GnK99+wm5mgh0eFu1xSvf1y+V3795agqtqO/8jJraLKJIOUM4mvylEgmPxBPj
	 OBtIW+XR29T6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F6CC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 11:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168242250581.29872.12739908458363820682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3c48b68407df1ea6ec98384272adfdad8851a3c1e4f5eb6786014e1f1f5f58
Date: Tue, 25 Apr 2023 11:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682422505
