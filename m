Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA1F1B86F7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737376554; cv=none; b=mp/yhn9+tePFfSWSKwi1Kow+E2vF3rwzcYAeCuPlolAjv/iKw+KE+q52Sor3pxqqioIDRoXJfkrDM4+vnAI+UcgnzWqKlLyh/e6A7+qXzOesBRFXkQm+YR2aht3nZBdQN/23Nba5RQsWVk204WNxM4qukSPLh5LhcTjcy5iSTsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737376554; c=relaxed/simple;
	bh=XsZ/tR1O3E9meZClriTn4gqE2ZROEQpFOaWAVFKxC7s=;
	h=To:Subject:From:Message-Id:Date; b=KN6HFfO7prf9v9fsNR/nrpb8Y/DbkC2ej9TVfd2JzAeB3Mw0ATwCMLCpT8tHoZPbFhzHyAIPURaFhb6AnHTTMZVe/jjYa6wQMrnozg7rsNcfnX/afZRXy6Mbb+J9BKbHuvgUO2LHQpUJAEX7aZNk+J95rc400WC4/h2TWRoO5dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V22UZFqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V22UZFqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3596C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737376553;
	bh=XsZ/tR1O3E9meZClriTn4gqE2ZROEQpFOaWAVFKxC7s=;
	h=To:Subject:From:Date:From;
	b=V22UZFqU1BReUw873OP8evtvm4hHTx8LtED/AEkmwJqVbKjeeHc82B0zHUlrXKCFn
	 2UZc1mSOsfzX0u+DNzOf5CJ9oCQnxzKx7iJR/3rLOC30vI5p4ln0rf8UiJgF3aKG5z
	 WjVYPIAXTZ0tPGl4698fT8mQm7N9hQR091RZBcURQNKDSH6k2kOUTQ8hhFdKjMdAGf
	 wz4h86J3kVyIOpC4bye3YMz9bUwlqknjzKsySJhWvLGrUIyunQ7kKnnym98rh3go8u
	 sdiPSeATEBaE+yjy3Ho5bte3GkeO17/GpHrHQnw1bC8CUcFr1/0VkWWxBnk2QeFGnu
	 fDmQHJ8Am9jCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EACC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737655358.9063.8455251698381696865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5790c2bab676541cbff31f3b5c4dca63846dd43f444b10c0ffd4d27cb0a1a7f
Date: Mon, 20 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737376553
