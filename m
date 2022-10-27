Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59C57B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A429C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666850454;
	bh=Ul22ej6PUdhgO7pudKkmNt05+zRS105FKzlRcV415jw=;
	h=To:Subject:From:Date:From;
	b=nL7pkfP4qkgLlMc2Fd2/LJSqO8ZBJr8Rx4CVzA5krUgdPinJXSHMaPQNIezsjkmqy
	 UYR26948a5YWbU2lJop0Ev0WL0/zApTkkr3Or9NCWdwk1FA1BVtgp7EZtuVcmqimf4
	 MqyD4FBwTsl8IjWaxXZJPxV3Oc6DlAnvrd+Lm4dTXeqPkyz2+dpZ1+iJyt8fiTXtDm
	 t+d9xTgfpH8RZOE1GFmjfa4Ss8XNBAfA2rGpplqNhuIXb6Xz0wj8ekQq4QjCqGjWhP
	 HUw+WAVsLVQ2UgwJSZONXsL8pwuf8WEInoGS9AjP6vJOmeukgZBw16t+fgeB37kWI/
	 +ckSgy8UsjsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E90C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685045432.7296.921418340508998949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbcca2b888aec0d41daf32e89f814129063a6347fdd9ac452d78d8fcb2ea25a
Date: Thu, 27 Oct 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666850454
