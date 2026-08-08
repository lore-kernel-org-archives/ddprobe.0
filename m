Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5013819B5B1
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786166434; cv=none; b=HoWnKWlLhvZaGZo9paQ9w4pcLjCIGN6ZbVvoZKyGusCI9CK09HcrG1l5NBXcF8CRCGgkijCUlimn1HP/lqIQkyardQtjlFI13h9flhymweIDoRTZNDb4HzO8W85gQoiI0PmylO4skbUO7GbyB8+mD6QgbF+j8xZH3NCqxzp5mg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786166434; c=relaxed/simple;
	bh=590QIkf1ml/EXkrI9z25S+Rhq2Y0/08lz5mBLq9TzPU=;
	h=To:Subject:From:Message-Id:Date; b=f5SW1vKzVY2IqBwgzK1h8EDzaFogTWI7NeK7k+6TCBI8vEnLSThFx1u4wvUFn1VB5aTZZ54WVAsFPeg4xVJNBMtsdsZrSMkQlMXCtOjnvfeCXH8VPRd3GF5/NctYHlt2NyHUJEQjyT0ofx0RmSAUxG3TRXzh52r2RhF1DhEpgks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRYcku+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRYcku+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D859BC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786166433;
	bh=590QIkf1ml/EXkrI9z25S+Rhq2Y0/08lz5mBLq9TzPU=;
	h=To:Subject:From:Date:From;
	b=NRYcku+AnyB2GqRNX6aFORz+gqQT/MKD/AkARY9SPJoZ8QL8IvTiFplZUTmyfPRcj
	 PQOEYodx+EozhOng8R0x1vW2wEJHl1JoRiur2aEp3UyXxk4TULqPSaKVziUaKU4Twx
	 B9f/gMQdB/kGQMx2Cn2/K1rVslN0zAOQjkbMqsB+jeXnqWrnOBcUZGOXnvZUzoLZNB
	 yx1C+t/uRnCuVb5EiflF2MCP9mTUjRE7b7kmaGa7C3IIuFH0/6P4H7/iSWTprU0OeU
	 CSX7ZbzTtmVmYjH9L/h3ag55yxjsJF9ehguCLXV8fpldVRvthJfQYHlujP2jnB6vFF
	 vurBzb5mXGFUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E6DC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616643371.3474.33966411662053421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015df404845f59e17eb03a1c71700546cfb53dd92d260940980fe53d993639de
Date: Sat, 08 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786166433
