Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA0417BD2
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786621834; cv=none; b=tD9rX4eZhKEiOAql14tsjSHLe827mFIe8NQb8mQbhtbzLBsW5Rf/h2ZrcdI3JCtFzBcfXK0SJ9tN0L63yg+VAVod6OrCHbBwG0F9ErIJJWYI0/b9OT6a5y/k0TAlE8vjtrlQB8poypVjYNbJAfL7oG0LGGXzYJNqfvd6yljsrpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786621834; c=relaxed/simple;
	bh=J1xObiuF4Gf18iytJ98qozEuq9g+jOGMg3mwlFl+0GI=;
	h=To:Subject:From:Message-Id:Date; b=R/oTkD34eDyqcvL/LqoxnCWn4f1/VuRKk4/T7VEvN+xzv8uBM5b02qzZQCiLqDk5AskoLIPHXv8Ep1ihAWXb2U7UpAM9+6kyUgReTDvuKGj3tsyLbOLthjGanu+nNQRPF5kBh3C7EhmNWT7aEAOjahZayJ7OXBIlY0SmVVZ1Yzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBLtUFyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBLtUFyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F0C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786621833;
	bh=J1xObiuF4Gf18iytJ98qozEuq9g+jOGMg3mwlFl+0GI=;
	h=To:Subject:From:Date:From;
	b=hBLtUFyvM2P4vwG1unDPvL8HVadw44jVjgNPEZu5tPZkgmat4zMzmifhKlHapZmos
	 mkvtZF/nJnaQF/rKJhzN/0fVlAjWZNtbFR41xwLID5oqo1O3t2EDbNxpoaVAh68/Fz
	 e9i5MKyaDOO5+qQZLOsB34Q+IqWuSFBpya3JvNibdSi2BRFJBBUTX3RXlTq3891GIG
	 8AjTdNTRaOADikuP/7VDCWGWuE4P10jrfE1dXudao5FWbHYBAIXK109e9hWCQZk3Nk
	 VZda3Lstp9wE5tY+ugJpzHLNVSoe01CRladtmTQ9ErWeGLa6TXdaZMdOXh+5LjLvsA
	 MfMzBIehvv+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AFDC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662183368.28182.5632633204681729010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5857340d6a66670aa12f4a77708573f726acb35349b0b6f2ed2f186437f684
Date: Thu, 13 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786621833
