Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327E420ED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745801994; cv=none; b=OpwZ6cUc/i1cFiZ9LS7kjM3bN6ZzgyP448/WjvNLpsIU2akD5pEFu2pF9i84T8lDeUgm+ZUErwa98u3SBFwPWzaKNFCgqxEfTuRNPZ2TLuOT2+fWWcZHXJOSAzGENrZYmZoZR8nP2VQb4IvGDj7tKEoN+bA+diE3dCUR053wjIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745801994; c=relaxed/simple;
	bh=986F+wldsVA1VJh1FrFm+lFRgnSH34XbCrImmskQps8=;
	h=To:Subject:From:Message-Id:Date; b=kD2FZWp56melc9D7sl0mVtth0hlB4WnhPmLxIxDrvPm08E9Phb3tmrNyJOa4HuHuj6qCW6WshnIv5hQu5mCt2dNQY3Ra3Q/jaOmBubBmWwehbvrVuQhEC2EwJOhVIncoYYC8JnvxeOl9JYRBJLG5DpRvf+uBkLUny4Jk9pWC4VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTkmQ6Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTkmQ6Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745801993;
	bh=986F+wldsVA1VJh1FrFm+lFRgnSH34XbCrImmskQps8=;
	h=To:Subject:From:Date:From;
	b=uTkmQ6KgqrfmhWUAw4EnL4v1tx7jxEQNIzVPBEutnzbYGQxeYTZPcaFGiLjJG5ik/
	 3/D+tV3gpU6iIkaaUJhgsNKmVnpuc7Vv+SMK+xHuU3PdHY+LVUqz31jpUyD/G69eoF
	 +GQbaJ5d1IaR47UYwi3LR31MqQuE+hOAExDkOl3u39zUfIlhCCgRBCF4a31y5Rq0Ye
	 SuaRuVIp4KALPqPX0gStIzQGfHRpH7m0sUwvt3KQqWiYh6PIoV3iAqWvm30Sd/aYZS
	 ZKQVDcbuxetdd0mO6uB18/3xDx9Lr2988VGQ1nM0oLqb41ps+NBapkNd/WCZva9614
	 sqMoiuqqQYmwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D4C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580199357.27251.453767040526204109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdc5a6fc387d4c26991ef55f79ab89f2c8882f7600fbfeaf097088eec5b25b5
Date: Mon, 28 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745801993
