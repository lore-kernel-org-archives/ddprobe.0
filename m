Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AAC7F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72C6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682149805;
	bh=soJwThg+wMry9+F/Z8vM5V1Ggij//ZNk9UhLef7z6hc=;
	h=To:Subject:From:Date:From;
	b=H2JZ7aJQUaM4eHlb3z5ue9IpOZJL0DgGSM9b63qWRwxGvxiePzE7uA7K+bhMXj6J6
	 6YnE2T1EOQfcRFxgh7Aytasm9irVacwwdsxNb0cHOG2HJhenkwottatQJoM9iM+xsC
	 rRlXaU4L0V29IJgyIzziH41qLGDwmxIYrhBqD3Mn0+oZWYtRREguwGP6AokcyPn0Ss
	 0WkCkTqb9JmjY8YxTk+Pcf5ur/V1hzHL6o97cVHrxEN+FOyR8VUtibdifZ5A1Cf5pN
	 yQSqR2QLalZUTvHcLSX9sPWSmZekPRigJFEWeUrYEFTvpbxptGE0QiUWYE+IegRSVC
	 E7NkiJTCotXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA225C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 07:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168214980574.17171.15635988467710897496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d168c28c572bcdda3a70924878a3f9a1150446c55046c4096931745e5b1787dd
Date: Sat, 22 Apr 2023 07:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682149805
