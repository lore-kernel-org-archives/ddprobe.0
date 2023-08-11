Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CABB2F4E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5AAC433CC
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691794988;
	bh=0olbSSOtKhZoD/dda643nuRIpIvoJ4oTUYyiWvo4soY=;
	h=To:Subject:From:Date:From;
	b=jLJPpU6YXSmXL2x80MxoA0aVg+HJ2EOVOW8ayswpDOaswxY2QdLo4/wGkWTFf7p6h
	 AtvMpppRwIsPpI2wXz5BWLqOXdPMsECmHsNmRKj2h9IIppqh9etO1mv2gsCDF90WQy
	 MLnP9BMgUnlGp6WSQlxEqCKZ6ZMvcj8i/RWKIwQXHVgXR4O29FB+sUa1ofKcPZlHbh
	 RCCGVn1ALPs3DgxG+gRImqss5yroLmc7bz49EM0KI5x8Fy3+ZW703WCNj99SFBNZ6o
	 IHF2HTcNA2MA41GbDPYa+WIGM+WAGhiTZq8UPT1NcRigGF5UVD9VROofN6G3CFH2i7
	 TGcXV4FgppaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4DDC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179498874.4541.4467344669474487084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9808843386aba75e4d75b1797f878a9b67efebe612b014315ea70ea331a6592a
Date: Fri, 11 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691794988
