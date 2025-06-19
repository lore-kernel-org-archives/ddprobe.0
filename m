Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EA03085D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750306794; cv=none; b=IiH00f3h/k37tXfR4BbKInzHkcZ/7ahyzuDhleFN8ofazs4enDLt39BD3ZTW6iLCdIKdo1AFXSqKbp5Ap0DUg0hUnO7I74kK1lf7JMM7ib86Ey1xFFeNU9Rbjhc/7CKIWmkyTdQOK7NyHm81PhV/Wgjbc3ISGEuPwN2vB1rqHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750306794; c=relaxed/simple;
	bh=GQnNyNqy/eZ2ea6zq1KgB7DXwyfSgVuZdVB86FZUobM=;
	h=To:Subject:From:Message-Id:Date; b=QxvNxRxQtpW5wQswzAhinrFnd2u5hi7hJ/GNPKBBFdxxmL5JZ0JJjWfo/omSAEDVeb5fB7Ltaas263PxpmcRZ0ZwQPKJW2lCUrUpngjlt0lnH+qYSWmE69+cDP/ZTImHU5hGtxUv+BCDZrLLKMIqOtIzByzNlHXLyff+goRefUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij+3F/Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij+3F/Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DECC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750306793;
	bh=GQnNyNqy/eZ2ea6zq1KgB7DXwyfSgVuZdVB86FZUobM=;
	h=To:Subject:From:Date:From;
	b=Ij+3F/UabUl1QkGWVNx6aUCb6+NaN0on8A5t0jluZ6DJw2W/2sSlhvG/U3Zjn3E3d
	 9J2cthLQPhMVl7lQuOkjzzd5FjsXeZIh6rwARZepLoXvWz8dti+PSazzw5oskdqc2K
	 wGOuVhK8hHNwv43fQJLR5t+ZLSnpt8sQsG5Z/WFUYSpTWn2Kl/FSkSDWarJq3Bz8IX
	 iEdUzmCXGokCYKzQeQDj/yydf+QQ2Pipj2ttn5yN+3TrW2KSVpMsKM+zHosSRuIjGI
	 Pd79ZZJULQiVdTaNxvS4xxNl1ScgzVb+b7JcYCoN7HIuuvNFwq6D5GFV4aRQI6oZSF
	 3Ftg7QC7T3/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBCEC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030679363.23668.6184373444302137882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cebca29075eb1264536d9837b20f79282eaf812085f53de748d001e0d71cab
Date: Thu, 19 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750306793
