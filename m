Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0CCA480
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794CCC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667943654;
	bh=HBMo/Q+hepiqiUyFEJcs3Uh7dY7MmaH0yNxX1ZHyeYE=;
	h=To:Subject:From:Date:From;
	b=N5zzayn5JRMWvizcq5YQlasx77NTt4TsGeynzl87clv0YN476OD/Eg4+Q7+dH+y32
	 6qoEQklV/O9GINZSrSLnQ716piJnBXlp52+e+9a+QvhCh9qHgQ514XZqiq5gaXiJZN
	 tMAp7wuqUXi4Bd4CowdW0gbLyPeBskxOc97Hx9i07lVn/nERuK6d0UAs1vCcfrGamj
	 dOfEFpm7C/FuPSKJqC7hCCYF2ZQTjnVz6Z+HEwfSnbHH+lED09rE/9UNDK9QJzIjIe
	 GmI84LKfis3VBnG8Dg8rJpGxzQh002DWJwL8DKXhoHDIM3KSbgl1+aU7ACPbTr9zRC
	 u25Urbi9rVlaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622D5C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794365439.26960.13703631390959487743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b731f2162677463cc49c277e0172e89e40fa4f6643285ae72852babd542162e3
Date: Tue, 08 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667943654
