Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9614F117
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746980994; cv=none; b=fPD58tkHVJnVsHpN9hk9/In8cr99QgYglAswg+fsK2NnbbDi96rKSD6qx4ZCTDun34Cp+PWra5y4fE/iGhBxkzbZRQ7MoLJ4RHaBvONQJCzKRbESEtd5rnpEkKimb3ESPXixiTT+hW3dxnzBfDi3IfsNLloAoUv9f9g50XSNYJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746980994; c=relaxed/simple;
	bh=z41i8dA5M1Ibi3atrFS1WaS5TE3i/CzsXi79rqVMVKM=;
	h=To:Subject:From:Message-Id:Date; b=E92x5G3NpoV2JZEqa3dqgUTjmzJ2ChKHtcUiKCO5uK8o5wy9btmZHHdOZmqkmA/u1nR1UrYfZ/r1OM1M5Dv3yHBpGUXrVPqcUFpCyKnEhbEzvjour7txU0ELbxEhgISf5u1062iFWx25eu+L4zRIEA7fqGAP4I6PsxgQ8qOBWFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+dZFp4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+dZFp4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9371C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746980993;
	bh=z41i8dA5M1Ibi3atrFS1WaS5TE3i/CzsXi79rqVMVKM=;
	h=To:Subject:From:Date:From;
	b=h+dZFp4asCSyz3BLzQ7wLwG/YM3cw/JRwUbIG2lmaea+974ZxH+btub+ATtBstOoY
	 hT10rGHSwNQVaP7BBFF+/Xxf5Sj7/akguxBzotrt67Hk//eUt8E1hvJtce5e4wGjJ1
	 4oK4ugHKuPZR3qkMQhLiMUUZd5hyWFnplpZBLFBzXqJ5nJ2IYwxX9D6FqYHmlRy0Y9
	 hrt828YLHoCWo5+v7hEEZDt7lVACYgdjjlyL2QxPjkXF6Hr2cgGmI5PudVTn65h2H8
	 oVM8ImLTXFOuv9s5x5SiHcD4lMorgwuZ7sI8TGD1JgQynn7IUE+U9HqnHeGsHCxKqP
	 vgWODB4kEjpcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553BC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698099357.32192.1682242216707548186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b39f96e81b2a411d2a51ae928d1603cfb8c661d3d384013b1d105e9f78ec1e
Date: Sun, 11 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746980993
