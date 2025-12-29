Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDD21E572F
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766989434; cv=none; b=EVeP1P94lxmvbCkVkkWyOwYrM7MmzOBj2da6LrTPQRlQSaPof1pGla9nsLCJete7i2kBFoJymb3+R16rnRW9WP7vcI2a4430QUY1R6zFosdOpVD0LQzH5DXOZF4ld1gpIiZkFQrjb56RUd7w/W42ognLOm0CAGUVEZuvM5ButP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766989434; c=relaxed/simple;
	bh=A/y9a+XzZk77DL+Y/3M2vagazJ/R9d45VnniqEgmZKk=;
	h=To:Subject:From:Message-Id:Date; b=goJBJ/pJeWU+OjOQ6kPnz9izBUugTCT5VEj2+rH2x+33Ksf2zN1fLZzqTYAuOUGVbZTAgS2XAlBEQUT0FR/rHncs6OjHS/8t76s8HLzpiMU7K0v4nGrkrdKRwC5bWpKQ63iSzqp8jFqeRwv9TLVu2VTyvuElxFuFhCpRfCz/+rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+n/Knwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+n/Knwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BD9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766989433;
	bh=A/y9a+XzZk77DL+Y/3M2vagazJ/R9d45VnniqEgmZKk=;
	h=To:Subject:From:Date:From;
	b=o+n/KnwnBQdpQf7SaHGSIS65u++svd5Sr4MjxFyg5d6uZJCrPI1gzTIa0my8tfL6S
	 6J7NgyNRIXMtP9qV3LlT4Q/sw/XWY5xH4pVjyNsMo1g1crO0KEqw/yvwacoLrlTrDJ
	 wWsTOT2Zsxs7h02onzVRpT9TEgrY9hJNT1eCcDG7mdPyu+98Q/7G/ZU7Cf4GP329LW
	 O2nU1Pn4+UQOhrKmcipmaLmVkRO6MK7I2k/xjLpXw9yw3I4ZMDms1/KkcrHdaSr1Ev
	 Z9zVRPKOazYCb2rb3kR83kl2TG3DyXKV5PJdqe//fVPN+y2yUAUXitRZFaLDgRDttB
	 oM295zEwpBvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D603D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698943360.5471.17376737018067805650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43237bba45b72a4cc962589ba91b4625571196de70824f47ede63150c21d199
Date: Mon, 29 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766989433
