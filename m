Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8F680A
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6F6C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661950253;
	bh=QzVsJhq9zkXCaRlxmkY7969326w8q1/GEFg+7db7HEA=;
	h=To:Subject:From:Date:From;
	b=ZsR06s8QGhkpBJAm3HMvuB92UwM5q+X9wDwFFwNTlf9QkKm6eMklkgN7h6+lEMH3N
	 VN4IbqWb7Hbd+c/Xq5pdkUqT6S4ND34A51SBpg8Jf/oie8Yy+oOuKLslfGeV8/xt1P
	 V2UxJZYIbYd+e1nvsCO1esLib7cB5SoVDGXO0Q2Ajz659UHRqOiE+fiVjn1Xz13toC
	 6jJ1qcGkbQLMt/CCsau1mBJId3VO6JvFliHfZyujm67hbCK40FkwwSd0be/t+Sf2xj
	 6KzglyzZNNJvMnroN3LEl7KSoTo66WpHQThbXZdkdE1WCJxRTBXT1v8uDd9Z6g13f9
	 ZFhg5cU2Gi7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECE9ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195025331.316.381760537894258760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862611360db852c7868f7df99420ad23d98e5d054e60c3813ab3c53c22fe0d24
Date: Wed, 31 Aug 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661950253
