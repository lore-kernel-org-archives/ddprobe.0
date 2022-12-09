Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AEBA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776C0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670577687;
	bh=NQeKuOJrnAygIlzrQdRAkQe2AWz8Nzc3gSAHnjeBiFE=;
	h=To:Subject:From:Date:From;
	b=r8PT5L+iCvhbb5Co+ivRM6MGqhhIwaVT8avF1z4VKXgfBpsGMy88kxjLCAJ/yuTFP
	 ZaCso1dpFez4AfViNMfDKgbY0sjaI9tq+trYjfwUAjbqvR/xv9YDsinkDGndzX/Fb6
	 n3cXBNdgDen0NXjO59TqoDDz/tKbVLSNIAnCEaJBhWVppMaGAva3djaPe8pbFavfV5
	 0at1ppJ/XkBTfXC9rduMOThJaw7aslBXOM+Zbdbyl4HNBSiFQEHfpmUEP61wSB5c2+
	 /cEWTJeNijPbU9Dlwq8IpF6Jbk9u5mYgZiGzR+evpZh7FjECZsPBIzzObx125L8o4r
	 um0nRwR+clR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9C2C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057768737.11248.11090119497521686921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96813c7f8dc40e64f501e4acce15c50b5c1e203731d86bc6cf902ff570f3a44
Date: Fri, 09 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670577687
