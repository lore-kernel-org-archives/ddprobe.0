Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0962F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC72C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663354253;
	bh=bSUq9mHJmkngjPsqQlzMYEZKYJICcnwrPcB83bsDn3s=;
	h=To:Subject:From:Date:From;
	b=uzmIKvixoUmEV0XQ0v+qRGLW70coPtZxxh2HR7k4dYGDBKQOx0W/ENY4uj5xRrPoc
	 9BQgBBjol/2h4njgNCBJhTTKYhQTcBONmRWFg4AfPj1PFfr+o5guZGtvEefb+HGd0s
	 vFslNo5TEto0qKAL5gfEZe9miwpp/+xt140xAYSjLDAF8HHrs1pNEU5coVB3f8hQlm
	 tLrGagirlm1+qNgjtWXCHI6a4gj01Fn8tkUxPLQsQ16vrgxdqOjnU/yf+AJ1uujr7d
	 8Mus5od/ElOLKhE1KSWw8pQSBhgyaU8LKVwAs409Gp50AwDWje+Fsu2omKkexi56Q7
	 fqVQpMsdmuC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D77EECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335425336.7505.18360946624763832237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2380edff31f3d3e69c0a011e9bb3b34c2044f1353514b4d9d962a53e2f35cf7c
Date: Fri, 16 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663354253
