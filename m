Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14524221282
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751111394; cv=none; b=uy7o5SbPoPF0H4IAFMnuUI6a35XNpFyjgT9d68/XnRQDoZa4HB94NSS0QU/ZEIva1+yOs8yZ3sGKfEwarLXjLRKOBn4v7aSWKfCTbmJyFreEfCGQxbXKrHCLnEHj3WFZ4WR2IGH9HlXuWOc05yOcwpg9bGcpToq+NPN2+tsK69U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751111394; c=relaxed/simple;
	bh=KbOhJFS6OhokkUK2ikIvyoTeK2BBAgBvd0ZKXd+9i0M=;
	h=To:Subject:From:Message-Id:Date; b=SrEnr4ouU2uWmFOjAV2vrkK8cOb1vU4pxXYDwaJ7WacORkNTV7c895JgIuJiWt8DbDEVqxAE36Nn4Tw0J2/55A/yaAVodVWkul6NIgtj09Gltlv3P8WaDamU+e/XDM+mAlqsTZ0NnlLmPCl33m3J2opuPxLDJzefYjG/4A1ZANs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD4d5HA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD4d5HA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E40C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751111393;
	bh=KbOhJFS6OhokkUK2ikIvyoTeK2BBAgBvd0ZKXd+9i0M=;
	h=To:Subject:From:Date:From;
	b=QD4d5HA4VmXJctMUqCLaZ7RYEUWxSvyMBrT6FLr0CEpeOoY1gRpa7XIdHQ3ia5ncW
	 3cKR86/0ECQv/YWn8vkU2QPp2DRrb/2xBO95V/h92R/kt6Pj8qwACLJGM6+w5oEiGi
	 oIFDeXh1qTfr+OqFPOZRVcq3T6GO9hNIEr869BAMQdhUoCX2+xT3U17hHBslDnM0fS
	 7Wwnwe1DghBZe6692f0I+a+LpPsybGvFEryht+H+Lv8ECMMbtBoa+TzfY5DTtZ7bbB
	 JbpktLCjTHzDu6NlVru3BKhlxkUX3u0JlQq3AEe7zt6zKejZ86H9Znlf+eVmiRu5Nm
	 tJSYM5bt8o9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A35C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111139358.25647.15796163510497916157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b087154849ba98695ec29ecf05499b58335c307baf957727c734e5c0a93cbe
Date: Sat, 28 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751111393
