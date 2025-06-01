Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3E33F3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748815794; cv=none; b=JJzU/D+HPK0urFzA8Cg2od8hmtvpnAWNqDdOH4NP6DHI4jcV7utSgp7VE40ggiuvsOb5bQ6GRdICT/DwaTOYLo9d5dSokc0YUTjMCPTh5F7t+w+ONEjDnSOTM+MEsrnRa7CvVa8+3vrBge72yxUHIwxbMEhCOZKMmfOuSag+DHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748815794; c=relaxed/simple;
	bh=s5l1m+WaCr+OTlfV9AVtAFxCPopW4EV3dqJKuX87hWE=;
	h=To:Subject:From:Message-Id:Date; b=qPtA4XEPFpDMQhjnCE9HfuH6Ff8uWfmuIFDVze/0nrBEWrqoV6ojqJpOShwDJmtTCwjB/bu7R2X51j0VBrN24lAZU0TAIYQ1Z8KIF5lD/Y0Vv928w5Nyf+1ePjCRVL8r1eHd0fq+2er11h1ZMTfw5Dla6HLkt+vb/iOf6CxYpqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYga+vRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYga+vRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748815793;
	bh=s5l1m+WaCr+OTlfV9AVtAFxCPopW4EV3dqJKuX87hWE=;
	h=To:Subject:From:Date:From;
	b=UYga+vRTS8GJWSDyd/al7GhfJ5WIuWcsuGtqois1eLfe4goEeN9dNrAoGerw8DsrZ
	 mKcnvbLW3STCcZU15XRjSk0oCRwaOROIWiJrNiGklakgzQH0mnj7XPD5rQGquaLg3+
	 GUjPbYT4mHvEhkt5x/CTEg/ayIx/xAFwZD0NjoZZMVdM+4grqdBAc5mycP7+awUcJv
	 r5MrqW0fJJT5J8RXlDguhQIYcJ38c95CfRaIWiZIdxjMkKZN/dEYTA4fnMSYPUDrRS
	 spiyjlEAz+0BouPbEYuJN11P4dixTkTSN4s2nuaj0EkeYFWzC1oN1o53ojP0UB8rpE
	 gZe+0XDZBzVGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B5C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881579357.22163.2461613847906387893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741ac02607aea198342307051f6af8fc737227364dfe9fb8c4f52a5d4fff8aaa
Date: Sun, 01 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748815793
