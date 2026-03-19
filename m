Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1158C175A8C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773886494; cv=none; b=EvU55yrFsiwAlKSYPJ/gTWDK7ZWdcTbpRwc40a+nMq1Ol3VpKfoUe9VY2OhaG6o4SaS74oQyVtAT98Pueeqf+stNeqFWc1bJwwWXxjSz4ghvDCeLCQnCNksVOyNH0PCPdVtf6hiILdYM2VZQKTA+9Cw9Pp7iSR2VR4uUQ+V3jh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773886494; c=relaxed/simple;
	bh=qQkEjkn93VZtBXmXG77lAiedCemP4xyO0ro0Zex6aug=;
	h=To:Subject:From:Message-Id:Date; b=B9xzYRvfG0Odmi6UGz+N9BN1XhBINSO8jRnJXiR5Rg5hgp6iUjuyBsGgvgHybQa0bJ0cwVgkvenXZFzJcRjHFXHXN4n4DhY7L9cD7eNMZw7e297ufBQD8VSCp1jsI28OgJBH2dmVjzaIq4yBg9ZVw5qxbXSCgE7xxdmLXx1WUQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCh4D8cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCh4D8cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1840C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773886493;
	bh=qQkEjkn93VZtBXmXG77lAiedCemP4xyO0ro0Zex6aug=;
	h=To:Subject:From:Date:From;
	b=DCh4D8cQs/F0At9MuSDJGwCye1fr2SxiI2CjAU0Bza0YPr9cHIS02qSmxfDZ4/VOC
	 UFzdpVK5ZW8EertEjeheyI6evJ8dpxXtdEW2OqvPZZPnsW3o6fHONp+z13CV2CJQ3J
	 DeF6a+PQF3tfNCGE9TlIfZGBrVcqEWqejjDlhlAqKbX0Jbqw/O+hDZL0BJf+wQ03Tb
	 YPee6GMY3gS4U1wnAcCr5ad/WgPnA8zwdx/XZFf4zQnjaJqwRS6xPA0+Hg9Nr/xn2c
	 Jd8kAv5qcLJGPj68lw6IeKB0FA2xHDayHZ4sVsb2agOYIzmhtVhlQIUlcJ19mRdro1
	 9lwhRncsVgD9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE501088E65
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388649357.28026.8117672237148680239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8552a463a7b9218ed95ac27b7c1a3781f68a9430b48804781ed23919694cf0c0
Date: Thu, 19 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773886493
