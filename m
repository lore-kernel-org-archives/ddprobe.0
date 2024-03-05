Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C748662A
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709648897; cv=none; b=c+5E11IGdAj1A4NYOfuoF2auj8wb5QrYhUYsacA0HY6c02kK6I5Mb3WgvSJxOZHPtdI9Z/nlBhErbljUyUWnW4LR8E0r5px2vADUKGT1OxAFyIf3f3JGnzurTmBKyyMo3e0ev9ai2QFiZes8SRP6bNbqyER0GuMNTKkVGgtaaUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709648897; c=relaxed/simple;
	bh=uNeDpNeUA0nCwfIJU3hNT/j3LHHrBm+tbGx91Ga8bm0=;
	h=To:Subject:From:Message-Id:Date; b=CM+b9qVZbEG8YLX3bYvO1HmrFUnvvs6Vi2nZVCGuXHT1oBg8h7YUtAvZw9KIMl4JgoPN3+dk1bBZB19DV8HrZ3OkNsIHBvAVKFkX2olbVq6cm1YmdLCgC9+ybeEF/9NrPswvYg0soYn6gqZTeEwDW+Klc66JMs8loNQDS1pzWKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYE1B4Q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYE1B4Q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82452C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709648896;
	bh=uNeDpNeUA0nCwfIJU3hNT/j3LHHrBm+tbGx91Ga8bm0=;
	h=To:Subject:From:Date:From;
	b=TYE1B4Q7G4hM7Emgwi0iqG30fjRyS6nDJilR7/lDLnugx6aw4oIz417Cf6CYAvRXz
	 kMvq45TEm/wZlvWK1mOmv+Pb0YUqMiiCXEqxPD0iKcHthxBzk58xce+YFOh3GzXUEH
	 gevUlCrjU0sfGrq6lAcSxRPa6fiGilE8ZY3enxBd04V4rl6FrBJY30/gReG4C963zk
	 EGnR8iNvr3NlyYG0vq3xvEsjGEElQgoxMFuSnAMGvzff6s/M3s8cic6WDZcJ/+W8lS
	 HyHfTg3dbmmUsB16TCh//n6gFDCQfIHfJdd9g5apNoy+B+/z7/bgV+hGbbeMKJ2h/t
	 QvkiJdXc4OFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CA0C54E41
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170964889639.24399.4082674822681951552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac54f85e0565c53dc96a0c1163f19fc692d043589bd781fac6f6f4ab72f0b9d9
Date: Tue, 05 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709648896
