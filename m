Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CC42F12D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760714393; cv=none; b=GwakK3G9rBovu1d4YbdeYq5F0yKrFwdIirBZ9F8rhzcykoXUTtq4JcwVVhXJxwzMF4ZlWMS/FZHGBSQv8s/eLUI9ynmKVUmIYfw6vULCTV6T1I65MH0fPGqDLQ/Hhw1ox6AprOXZYq7vhi4b/ls/FcRnD8eROBnJcbK/0GfTCyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760714393; c=relaxed/simple;
	bh=GqdpbHW9tyDyO/6R1py7C9rjTfkefv993WV9jAGYVRY=;
	h=To:Subject:From:Message-Id:Date; b=dG71a+CyxW/jr8VmZyeDQXYc/lV7BkIdAOEdxadupWTpATBeUTWenfefOcdn8fE5HfQTZxyH4lurDOhC9PtGSoBvXiE9DwUopE2fPnfkiaqO9K0qjwWCJOaR2VrfFY5AGU2qAHLI6h8yapczeNRkyGwKU/jh4gIgOh1eC0iOE+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCYCDPfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCYCDPfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE1EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760714393;
	bh=GqdpbHW9tyDyO/6R1py7C9rjTfkefv993WV9jAGYVRY=;
	h=To:Subject:From:Date:From;
	b=YCYCDPfv4Uq0+eW+Ng2wSeTieV1E3HK83Awu3RCFHEQ0wg2GX/au2QanGkrb154Tc
	 zmevYK381j1r412UUrn7w+OQzzaFnzWfnuuP2HkZuN1xhzLYlzFUeNBFNn8F+jytVx
	 NvP1YHfz2AKr7KAJR7kqKAocQP3gcpO/gcEfwQVincgM3zLKukIDgFcUiwVFwVDC0Z
	 VriRhmIZHdkoF6u5XO+rZ644TX7d5cQ5kt5KQ6jrbFexZjU5cjOPBKXbgr8rPQaqIs
	 Me5v2V/QW6QzHC8maNfzA/dzb4oChrfhXj57DIshOaSh5U7kUEwczNO0lIVU1Qo7Qc
	 FUJo01V0Uukuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A5CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071439358.6885.16976304757921674340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831409f901da360f299d5a02b5bc5c92c1752fbe726d4fae634a2a211a471a8a
Date: Fri, 17 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760714393
