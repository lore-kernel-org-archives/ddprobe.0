Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606E78C1F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714315943; cv=none; b=C4ocnJdrg5yIP1yJGkbWVxI7T9M6T7YzpFLXbpFnnscBkLfhh1HhhEW32dINyGbCPGjBWBEJlJNzNM/rgAbU+9t7X7/TBUvf2gsYEvyd5VVSG9gycHypdCP0IlMQH8jRVkLDy9a9OE7cZoz0iczKJByac1tIm8dcdMkZJDaZtUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714315943; c=relaxed/simple;
	bh=UcxF+Cz9cA1SNCcvxmvyUtMlOxQXQclod8RlqdXN5V8=;
	h=To:Subject:From:Message-Id:Date; b=ATwN+gO2o9RmJGEmp+QG35RiVsxy4w/D7xH9ZOSSOpggnVyM0RdvN30Rxgv82yv7a+EzvdBP5Y3OboYlQWeEYwYIImdhvwmv+BdTNfXSLqUQ9ZF0qoFVtqo0xWGxM75VLfcRkzT9DPoyYMJQWy42XJ0sOEZLwZuu72cZCb5FDQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsOy7Bda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsOy7Bda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05E0C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714315942;
	bh=UcxF+Cz9cA1SNCcvxmvyUtMlOxQXQclod8RlqdXN5V8=;
	h=To:Subject:From:Date:From;
	b=RsOy7BdauobFytRimt2bXfMGfDftgoLsaXlQF0uNoXSaxm6iTONLkQeG8CxgrYqZ0
	 RJj09qDUJcllWrSiX18xt0/WE/zS0rOdtOnExlFP+smGDIFM+2SBgFIXY5goaxBkRy
	 wTCMK6o61XwmcUW5cWWRjsweS6r0Lae5EbMMIC8hAnnvySumu3aQUH/OrFHIhGR/NE
	 gih0CWqf8XCbAV6E7/a8rzFtLoznQtsbf8gq/l3gNXlVNRkFjQvdfrHqD9mOpoDWPj
	 aEZfPpkUXKlldUam2/u0leolllTPUkTdViftlhPx6pwtoMYUkOV4bjj2jXKf4lS5+i
	 3HN42duSWaD8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCFFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431594275.29030.313494639549797905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f93222c2481eff4ef457fe7cd475b2c5268758365af1aa34038c31f088e4488
Date: Sun, 28 Apr 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714315942
