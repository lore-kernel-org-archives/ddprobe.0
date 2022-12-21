Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED5823A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D491C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671622887;
	bh=4xZ9/QGim1qcsjAbc+8AnYvk5S9znT52ZCd1v2SXEgk=;
	h=To:Subject:From:Date:From;
	b=MQHz/gvQOwlgwvw622Q5byJsHhSRdSEgGzajzcmSd2D+5iy+4YAVwxLl1mRcE3iTb
	 XOw/ghX+EKi8+5zirZFPAe/VcG6WqyuaOF3RBt3cFmaivljUcLo+s546ysUWDY2fWT
	 j5D9KqM0EyK+kZeYbErPuRbWK+SrOABs8iLYe+Xq6kC4BgUK3N9samWKga5lG+aRzB
	 +WpzHtj7ASP51qhHZ4SmJei3rDmYDSRCQNRubZwQHzoJPlcChkPuOmQo4KT8i7uwh3
	 wplGuxcDkW4w7F+d8PrT1UHPfVKKFovC9YMf9TO9BoEXni7/HFZ43FAze9OZeps8Y8
	 9uyd8ecnPsIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616AFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162288739.15758.13026752213724110059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd70623d09f04da34bec177d54bb581614108662d1c6565fe07b4f1e6c97244
Date: Wed, 21 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671622887
