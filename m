Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56812C8D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714465943; cv=none; b=P9x0pk2B6vde+zV9MLNZ/yKfc2vdLv+6vvzoVm9Rgcb/0vaRdoD2jKN/XVWXQoG9cAe5Ez/LVRlS8ftIXufnT6JX9+joNNnGyyL6RyM/aPHI3fAvpKdGLUbHd7Yh/mULbzYslYggBDsKLpIohJc5JrhEbXtC3VQg7nU0g+38ix4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714465943; c=relaxed/simple;
	bh=htJjncSZ/COxR2WW/QxgijkJv9MKduCJXvL8jFHhAOY=;
	h=To:Subject:From:Message-Id:Date; b=D701HJhpUrdcwMeJR5kh1FK+zNFBfSyBiBq9mfMgW44f0sfaSZRvy5KYLE4qayaKPY4BntFb08Qt/U1meMdKQb07h6vNwlqKnvYkhBWag3w4v6fPqzM5M+kd2GhOBC4WBJj/+fPJGhMm+zIiAAj9AWY29BnRa3z+NLtMIQkJNns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs4peIQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs4peIQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D473EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714465942;
	bh=htJjncSZ/COxR2WW/QxgijkJv9MKduCJXvL8jFHhAOY=;
	h=To:Subject:From:Date:From;
	b=Hs4peIQd31TFl/ZbvlTiYDNp4ZzHve7AGPV8z0Vugan5xaOA6sydoG51NwX6Sg9Mz
	 QgIkEqTsXWF4zzyJgiVJCr/32fQmgfhgqBuu3kHwsLSpAjZWiiQaUNI2eRPNzZFANY
	 pnSiefCbvsQdBnDb47QX+cvH3bIf7s2WIDpzv//4fx7QK1bCbzddLnBqCGTFW/+V6C
	 2s+WNrse+t8rOUtDLy93MHbb4lzv3izwn2Z7T7EPpBywFZ9nRestcohq0aCgcTGHeI
	 dV4H4nrZmpjze7dWvr3vZAddRMHq+EM5UoiOabCXgpS90QeXHop+8CakiBoT32w6Qn
	 FlGJ6MTwtGUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C608EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446594280.30854.14497446062440388288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67746bb035971bcbd39bdb884018a320570787d4055c7f8671bbc06a4bb642bf
Date: Tue, 30 Apr 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714465942
