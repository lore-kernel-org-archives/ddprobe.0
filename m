Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA545D8FB
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706969897; cv=none; b=JaKQPBM4lYSKeHYHHAYecCetgazT0/PuM73Qyxx9kOa3dfJuyaDIjH6ibPuK0lVR+VhwFVNIOc1055oYlLaBsjZM3MdxeCE+TxLpKXQXCC18VgOUpHwnyV17zBS+9ixRCnCVU60J8lV6AEIvSNdXaN77SMlPj23lb8+NWwgwG8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706969897; c=relaxed/simple;
	bh=Sz86oKcsXrKVtNEsRRYE3N9ro/0FaIX3PguiTIdz0U0=;
	h=To:Subject:From:Message-Id:Date; b=kukHNQeBs/9UV70fNeLaK6APc9lP6tWBaEJ81FpkLcFM5/uBz1A+8+IxLWIV8zRwMVJR8hQpuA2bYBbAFB+89w3G+vGYtC1nxx8+f34qef0vgGOE1o5OhdpuD8sTlzxwY6AITpVpy9FamWh9gLoNcEA9F5jC6ZNkIP1ozEjI/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGKQWUyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGKQWUyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8111EC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706969896;
	bh=Sz86oKcsXrKVtNEsRRYE3N9ro/0FaIX3PguiTIdz0U0=;
	h=To:Subject:From:Date:From;
	b=UGKQWUycpNAipcnUkyX0CQoRJFSa3YTm+UU2rkGNkb4/aw4nd7Hkxq/YOh2K08ZEx
	 7bKTQssbpuEEHtf4HBQmx1E9LxhCSJX2SofL7LOi+FFvFMQZBFBTJScmR3rDmXbpI0
	 wProZMfVRquIu2miwD47F5/HwOznWaHu6shoqaHvBDIbzjvf7/yJx6xwBeou4iGKi0
	 SnZ6c4RNR7yWa23vo/L5zlMt8rL6iiy3UMk0fcA66YJAcjdi0Itv9umZeFcgk29QIR
	 9DxjeRltjvOirlX3YUqGKlMv9Z7yXm6Y1zZOUKQQatDgi21hO7JoBQuHhIxOAbHCy6
	 fyo2l8hCeZZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674A6C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170696989639.8857.3863516845035263940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc61b2a968d02b17d6176828f16e37cf392f5f4ec6e62720086ab298f6163efd
Date: Sat, 03 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706969896
