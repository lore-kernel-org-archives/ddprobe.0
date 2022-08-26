Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25DD33E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E58C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661512252;
	bh=RPjZPVzQQc40cuiFRObQfy5RecEomT+rZ97OXWM2bZE=;
	h=To:Subject:From:Date:From;
	b=ThJM4sgytf6dNYXAjLyDrFTfonDcccMymoWsoCNps0SnnfEoh4ZskR4IFaaF+43yZ
	 l8uqmdVt08ocx6hl+LbRfwqeo/WWo1YsGyDkNXRONLrvLcoYSvbQkqUsvfEJK9ChYk
	 GBvsJ/ofz4WHHeZW0eT/4o+HgZri8g1PFKL/VDy6BF+gEWnaqm8lKuGnV0EXkneLpF
	 OO6I8qcXupzSNTQyAnMhbp7qxq+Z141raygHq4KFArImoMd7qpkbu4udKelu/IZI9T
	 4mUi2rg+bZvrOn9LhH9NykxyRTcNThvg70iI8t83XrX71yvhDs93nw1zWEHLR1k5La
	 e6q/1tB14sNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616D6ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151225239.8186.5978871669860117611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47450cf02ac3aa2969cb29c13724cc70ec26ece48001163703005b26f6f40fcf
Date: Fri, 26 Aug 2022 11:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661512252
