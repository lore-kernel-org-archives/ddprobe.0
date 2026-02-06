Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001A84219E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399834; cv=none; b=j8hQcxQp0Qnowi6Rj80UkzqulzqLR+4K+Z0dvlrqJm4Pu61Q1JiCnx5wJciJNg2wcKc7PKPrakZMDWBOZrk0zRMx0jqpBBjhmofQOcm2PvhI7rwZBKeqGBl4T2Rn9VL6q3yzzYYOt8hG8keY+1XwIcUX51w+ruObQaYFwSddxjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399834; c=relaxed/simple;
	bh=cWq8Rcco76+gBI0Ha1SiCaSQbMRrIoPb9r2X36P4L7A=;
	h=To:Subject:From:Message-Id:Date; b=d+2oVULjWQmJNPndsbIuhzfq6waAfE/uwLzOIKQtbJ10XZHYvzBrhhROSGpGEUbsHp0dNNrkNAc0avu3CjKHja21rYv2O8EmTUfQSvtqmiS8Qs/vGCI6Hh8vw9r+7MP8m8XUEKz23OsDRYQz2Ocq9/5g+UzrX3VROSlQsZMFHtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIXj3kTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIXj3kTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE63C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770399833;
	bh=cWq8Rcco76+gBI0Ha1SiCaSQbMRrIoPb9r2X36P4L7A=;
	h=To:Subject:From:Date:From;
	b=SIXj3kTIZUvzsudQfm3XfmVzaqq75wkUe/JSu8WDaH1zWEAI0ixArSzy0Mta6KEz5
	 BIwS7lsm9HyXOOojfCBz+PntRHwsHSUnCMLUvOCa9KejwT1w+hr705/1j62bz0MF/S
	 z4EFwlhkp7RMRkRejFptA1KeFmID215KzI3Gty3UQTaLy5BpUxPl2RmDOd6g9GvJiu
	 Y6aGz23HkpwKg4Lc9D78qU7Cpw3BFtcooclDoUQ4xn6r+sNZfC070/znWe5rimkC6g
	 f4AkfYBDl5N117y5mDnYcCjEPh3GWFmh1dLAhS5HZf1ip/88gupsgn/JyedEbjP6WD
	 IiaYqK4qd/YPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C76EE6B43
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039983358.9199.4049122344888924344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4304a8ec4ab6da9df017a0970a1cddb1afe66e8d22f27ad986175fa6c8ac65d1
Date: Fri, 06 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770399833
