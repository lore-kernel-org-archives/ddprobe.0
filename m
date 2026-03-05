Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1513AD05
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772686494; cv=none; b=uVJ1ElfdnyPPSVxVafOGHAVrDxHHteOUuSYTAmhFxlAHEVHX8ROdZiY2U/jBopYFriKZagVjRWANyr0qVRs3FaTNxiSWegK9yKuhKgkXBDPevuPzHHsHbiGOdhk9dU3z1zBaJXY2f04bTNS1LN95o+gUfFQTk0/O6u1RNq6Hu8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772686494; c=relaxed/simple;
	bh=fa/aQ/5Q7zCk4p/8AoNxlWQLZKaDzFIiZ/hqGgmsN5U=;
	h=To:Subject:From:Message-Id:Date; b=cqnizoGE9nRtTtjbu4o09BsGzkySkcvKNS4szUeqeJds2U4YPJdUSB1nq334SDXqTI28CCE9BI0hYvvPKZesisspt7NHddZ4itnFNeqWhcRszYDXt8sPnOXpFYzVCYtEYixWuuG2sXXWvK25tR4VpTBoHONzPqEqqqmOKLolrtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPjYrP7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPjYrP7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772686493;
	bh=fa/aQ/5Q7zCk4p/8AoNxlWQLZKaDzFIiZ/hqGgmsN5U=;
	h=To:Subject:From:Date:From;
	b=BPjYrP7dybNhvT+GvxX4P+QY+V5N7Fa2o2RnkQY9TJadyK07A4rE/XGmkTsLqcTCX
	 UR2E/q3Bn18vnXMg0IX85O6i3bOEdVshE4ocMn9zEtTGr9TJdTp1qCBxF3gNSK8H9q
	 +2u//Qec9j7Lvsrdck8kFSNCsfRG4QoieO5O3JqESksw7Q9hiabQVFmWaQhvQB2skZ
	 CbbvCC+t789Cnl7FcFkrmHmtVVjNkveYVW9o8dNINELm3juC/WH8JbcZRTYgOA5NQi
	 WalfmIA9iIlKiYUuYdDBi2Td0HUnls+JEm/WWM2y8jU5Kslz2OLih7lozklwrXhUX3
	 GP/juCMDgWHEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281DEDEC07
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268649358.13847.8020107996562864926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ea15c1d398ee4870574ac8a46294902d8506031861803fddaf19d37d0ecf4c
Date: Thu, 05 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772686493
