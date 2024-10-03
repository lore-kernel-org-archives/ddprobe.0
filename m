Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D61741D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727958954; cv=none; b=KDWXvXsf+UVBsd/Zu3A9iHFXsE5IJuDhMlxm+br+oZFaSo7U43XXv7IA5k28DwLM5fjBxXZPysBzAMS2bBwn5v4tScRQFtEvZKBT/gpJ1swMX4Ndzs38kNef4ZEU0mzbMZbtB08BvpSZvlYJbK7Gecu4IFtVUCW2bVJ1BnZUBhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727958954; c=relaxed/simple;
	bh=aswV7cSmGvdKqFeh9gYsWI3rojjDpY2lw1hlTVlyrHI=;
	h=To:Subject:From:Message-Id:Date; b=EuplC8dUQXqh+Pyt6lHzvkfOauwXbmE56duJFI99ZlQufz9xBOSn6FY2PwZ/Cmzk+Vw8hPhtpIlnb6Wx84n78tudjP9w/eQsPaB/b9UIOam989+5ysQbqb6g7ceiwpgVSAsulT8fVcUFDF4OAMJ3U7vPWe0LxB3QAHRKr0eK5EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj6WWtpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj6WWtpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA85C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727958953;
	bh=aswV7cSmGvdKqFeh9gYsWI3rojjDpY2lw1hlTVlyrHI=;
	h=To:Subject:From:Date:From;
	b=Sj6WWtpYgeeAF8a3lE+oIoXADi1iy2AgHBoLBv3zM/TdbFUoX826npLy0sB9hUr9D
	 fKz7Rv0L1MamtDo048UzvtVIZXq8SFCNDzRIFF0GNOjWIayqdBZyayY6pNN2x78Siu
	 LmZoWHeQHknyeWiFu/kJX/jD69EiCP9faAn9SBBSk5QvDhV52WdmCBFI5c87kg68P9
	 p6+I1Me0eLZZSIv5cDHEjatpyKO9gjZdHo+bJoWQ0l6zt2ixCr5GQBPRGAm9JgKRx3
	 zT5NAmpTLlYVPD5lpUD7Vtg39NBCyS0c8vlNEyhLEliEte2jYWPmO9vHD/jCkgT2g/
	 iVYYj1Vko/5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EDACF34A2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795895364.25831.16651382646617056202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c37b82ea43993d78706a7e9f1b1ea30a85d4b39a15f9a30a5e54a1647aeb45
Date: Thu, 03 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727958953
