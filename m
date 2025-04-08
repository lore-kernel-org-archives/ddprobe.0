Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303342063FA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744091394; cv=none; b=aZNusSHslF0Is6dJiSum0+dwuXhBSG5jRKoyrkFZdMgRJJIlcuyOk4dtDFoOFZ3+fDyFYHF/Z3Wz3GEijXLXb39Bl07xdrxtDdO/VAMKlGryBy/dfGUNU3NzxEpBm+F55BOwHCdWOCw9SU9snEHGMlS/NNPBzAE/r6HUgx2CfIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744091394; c=relaxed/simple;
	bh=Mdw5jyP1hBlPodIXTkHAiB7OgLQkNBYpQddNX8C3khk=;
	h=To:Subject:From:Message-Id:Date; b=aFL/ZM2KmQWDOTq+W1DLEBi63h+vXV7iswFrNNkkIVPKvWRn1+c+J6YA7btyaLpqovI+rVeJurImQhixx0tAhOAJiqk04cd+8N5rExAHj7kTCPLklcpvltXvPPFr9Anj//94LkYAECsSnuhzmY2ALXBhSjFYIkMMlpEiPDvAoS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAwh9RKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAwh9RKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744091393;
	bh=Mdw5jyP1hBlPodIXTkHAiB7OgLQkNBYpQddNX8C3khk=;
	h=To:Subject:From:Date:From;
	b=UAwh9RKBTP2CXxRiyWu0pRwnjakffqxi6tSFt10mGcH0Rme8rHKj6xy4WqsZPAbkE
	 HPc9I3wmj0FErcnYnYaPw2y4zmiwRAQSlmIXK0cIh1yyLP+JZyq4xRhvI3bJQcwaDz
	 0K6qcK7QJOup5kukvz0PE7IgEue2X2+fgtbxcWRhhQ5Y2jhuYFKjwYCX1Bx9OMBKwI
	 fAgHpbX7KCW/eA9dnGkphLBOvn9V8faN/A2iUzVIaaAvV/Glo9NSfEEvPeH1g/jUxp
	 WGd3zL89kFEBonNqzw9OLdLv2+cAOqEnPMZCHUF2Ga+ZsJEjuPoJNGTTMtLyPj8XaV
	 mdt7M6OEa8tBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91443C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409139358.7302.17338393013980889541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd44bca56534c0c28208869fcd0b80cc0faffce62d864ca767e8ea636fab0d29
Date: Tue, 08 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744091393
