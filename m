Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63018FC80
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742813994; cv=none; b=d2Vr35DdWxB8XOJa54t+kHMbMpOyb/LMoaMvUbCCVTQf8LYzfJgQfvNfsR4EecWrpIG9hvhr5O8JVxQYX/BqgbzIerWL5NdowoOX9c2nIHqbmcmDeEY4ydb9WsQU3OAbAj4/u8VcOn5cES4yqZS35F1P32olFggCwtQGnGU2isY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742813994; c=relaxed/simple;
	bh=Swsw02WCvi3LaRb0VbKUdI1WUwuLnBUzz4gIRXfegfo=;
	h=To:Subject:From:Message-Id:Date; b=FMAxPvD1SgV5HBvK5kG7U6I7ki2MKRJbJqG41mbssZ/sZl1xccmJvP6XWuB4Bh+V4E/+uQ9lNbZPeCUfgV1qq84o1YlzrgtwvHe/q3s5hjzC0ZIvfEcS9OmZUnzyuC9NeQFbjrj+OcVscfn7ErI4+Ci9K9x0WvHmOZvEyZv8D+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9EIRvhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9EIRvhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E1EC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742813993;
	bh=Swsw02WCvi3LaRb0VbKUdI1WUwuLnBUzz4gIRXfegfo=;
	h=To:Subject:From:Date:From;
	b=C9EIRvhE0EMG2GrAznwVKPUV7gmYnFI6MlzmG4Sx7eGe/Em7TTSIolBc7XKIOUf4a
	 xGyHu6o1lVbBZhxRgUNYkPepeBeXEkC8dqMZSUcJRmxbb+uOAg+8gu5eOalIbuqSFe
	 MyqdmsjhfiIHTkA0P135enm/d9OhUqp9jhc+nTT8COu3lrq6Ui9x98JBnMKruomkfn
	 tkxd3gDG0AZ6KNxo8QASGSf2bXNWymgmim4ENabB5WMxHOcsdfMumLmRGq3ZY/EZMB
	 mzfLD0xVu0B0FBoou3359ETMy8qDwzVhANZTzNRHBhGGocdqzlHD3QFvQVCL5ueYNM
	 fawGjFz8/zUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91326C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281399358.10977.10551785184769679905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a052d6fc351f76b667659bb3b4df867ccc0986401e67003e3b732e998de50ad
Date: Mon, 24 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742813993
