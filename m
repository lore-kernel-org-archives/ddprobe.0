Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D419F2F12D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769748833; cv=none; b=GOxSTWYHhXXCxkAhHTbARXYSTEkSb7xTEqcQ5CCQmjCJBWCEnZo2jukJSuRUacTik/VCVvGfaLE8iODGZsOzJ3jrNuE8dCwte2EBSr4eoFKang0srP0/DNFNuaK0av7VVp+uIRiSgqUBuEKBgh5gSuUhmEp3D+JnMO6mE7FwZdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769748833; c=relaxed/simple;
	bh=JqFIJ64sFb2nvEqib5Jh3kBqg/ctjukvru5V+wvZI0E=;
	h=To:Subject:From:Message-Id:Date; b=O1H/8EpD9lQRH2ZyGLPMICGdhXzjbRtH+GzfMz0jIDKNFnCDXXtgYVIuRZWsMpM/piEgsQAoR9bcU5QOk4hXZZLotIL50uwmNDvyYLtBy2XUD80S/KT6VCA6q8golTqpGZGjREusEw7z8R3V/emm9Qax4GhO4CHQVuRoxAl40Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjYZcPg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjYZcPg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769748833;
	bh=JqFIJ64sFb2nvEqib5Jh3kBqg/ctjukvru5V+wvZI0E=;
	h=To:Subject:From:Date:From;
	b=rjYZcPg6f3Z++nuUvdQo8GNjDJTMQ+dmKE6axd+7jZg4R9mQm6ZtedzRnJ9TcDXpy
	 GCcQQb5Dx8bl4R1YYGC5DkcdvaW0SMNYSNFx5qRhA0GGK5Yrv70+m0vFU2b5Mr4rbD
	 O+jArA+hxT2SqEPKvoYkb4PjQQMtz5tExtSrtBLQt37siu0cidrKBHyF3xHL/aejeV
	 7nPBdXGs2PLJsOXvoxreVdvfCVBQHFIemJfF2YWO5WotgUP1RR3T3q4G0P/Y3GRwgz
	 vOMv70XpQDbNjJQ9prECkK3P86s8yKcBujL1OkjxBbcCx1zOqlHh8TeGHgOaKrS8Vo
	 u4Wav9mDYD6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D04AD73EB7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974883363.8612.18222844149612826563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a19b702a6420859644fc2b4c92e81b6306e434c1cf56b6d37362f266055743
Date: Fri, 30 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769748833
