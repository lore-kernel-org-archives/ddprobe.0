Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2C83B7752
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781900794; cv=none; b=MhebPbUfJaqe1ATYZ3Mq3PKvxOdOqIXYt7URFB512ZTMULlJ1hq0B73SRmzyaMRguOIQp23RdCJx/ePgmZkk+KPRR4pI0bBJtiPhKS0QV+RyxTVLBVM2wAciCusiFO302eBwzstK2ff/ZsIWG0PHgPURJZVxcwdb2zuuB51uvTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781900794; c=relaxed/simple;
	bh=hlhJ92QrxIxy23S9WlMVKnNcYcEv9JdWJCJIBY/9Qj0=;
	h=To:Subject:From:Message-Id:Date; b=UblyCk4g7IvbaozVw46LBb19cn4XzbG2wCVFYJx0cC19ZGwVYda9o0KdTJ0gvh0Kx94Og1FsTIl3SHUOzSJUkXKBVvzYTjkapN3ZqZ+UbWMpeziSROa56nI9bK7Me4koJhZU5nFTBKt7pemJDVCSFp0nX2XO/C2Wp4E3nZHtCRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD4xHzcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD4xHzcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6355C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781900793;
	bh=hlhJ92QrxIxy23S9WlMVKnNcYcEv9JdWJCJIBY/9Qj0=;
	h=To:Subject:From:Date:From;
	b=tD4xHzcT0e4RRL99NpqmE39reAZRTZiZg1jNSJ/2pGdEWKh+PQ76fhYCwyGKPbRP2
	 IFvGm4g8FWf33+EFFpeJreBIUeyHWbZF7lh38iCvUKd2bV3Y2QgPanPK9KIp7nVq8J
	 RXV446XFa3ml9IbxJeCzo9+6/FTBJ6tA9JX+eJgTxDf8kt4wsctYLOGktqwAhOtaiL
	 LbLhZ27xgVon/B11XdLGrmIkRvGV0SWWMmempBOPrbIS1oQM8Lji5LRYEGPxrcMzXK
	 +oViqwh0GUxpRNewC+hPH+NSk/kL3Te1YUL0NBOWVVJCBLLZ/0lEABYN3OeBTiMV05
	 zdvFTwOfU9SMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77DFCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190079374.14341.4111106109264334360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4006117c72ac208f12021604cb0952acd5875b5258926fa0c2bde8b91800466a
Date: Fri, 19 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781900793
