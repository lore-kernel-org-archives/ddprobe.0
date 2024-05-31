Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E06E57CA7
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717169663; cv=none; b=FA/IuiyCmHdB3BfeFgInlZsvg733TLq1b3NSfVt3QJLV4HJIVLjuvbuMQM4j+dWLek/Uk6LSxD5NSu9IRhWpNMNqvvTxWIPpmbzZHBpMIwv9oIw5GfXWFT+DlBWhXgyxBsC7pg+xgDm6h4g6J5wfi1ItrGkcjwCEPhrnFZnadeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717169663; c=relaxed/simple;
	bh=YjPfMn3vfN/IzkofhLRYWbOpK6UOl+kC1l7y/u2sjxE=;
	h=To:Subject:From:Message-Id:Date; b=SDpFfKVrb2FYrcA4dPuHXAoGgvbhP5zr+8MCwE9+afevkQE2Fk0EvsEwGwOnx3QZAgivXBY/9FyQFckOtUEDp40igfden5Vm/zHUIrSHFNsnV59UQHv09FxqAQolFze0Wm25ksh+PJnm2BIaaMQKF2ukm2kL+r0Nw9E1IkB9sPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4nT3H1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4nT3H1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4224C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717169662;
	bh=YjPfMn3vfN/IzkofhLRYWbOpK6UOl+kC1l7y/u2sjxE=;
	h=To:Subject:From:Date:From;
	b=G4nT3H1sJRwCxaOB18yWmfR5z+jHb3tKvNQh8JyVs29TLcOUWW3FfvOUYP7CHXcEL
	 KyqfCs9ffq0DMruP7fkXlFBmE2TMqayWrTa0y4GjX8j9mzxGS97jz9nmRVWrKPqXGS
	 iZ+Wi6GoOI1fac47YdhUvT0TcHTi70PKr3rIXkJZB7txwwqShaaM4CwTZPiYjcJNbi
	 8YXROhZWgc5v4hsannc1pkmjNrNb9/+F4eFAAtLy+umBRk/FCKiTQFZPwbrg9N4n/X
	 4XXC6PFI3H2zW8ywolc8uflEZ3Tp4dAEXqVcFGdUwErI6mtDj+chxki0QxVk2I9uso
	 7PQl2yQMlWKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE85DC25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716966277.2620.6100273160416520191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b7fe7899bf498045639393c65ad782a629d4422955d485668c7f7f3814825a
Date: Fri, 31 May 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717169662
