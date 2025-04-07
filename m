Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EF7231A3B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744019994; cv=none; b=Gd+IXRv5m3CTj4RHp/Hr7FI/poARU0X5IXnVXL5M5uxyhBhzFh4FJ7SuveTzMEUnvTkK+Fmc0HYEwb3qYaFzStxyOcDfjQ+wh8rSCfCdWVcJdEyhMRfXZKwtFijNoMek7qnmhM5QhyyO+wjAATgXdbYu7msEFo5o9xQ45OAy4k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744019994; c=relaxed/simple;
	bh=pWOCiEaF1PX9MNiT8PPpEZLKrLS70B3x1Fs0knkbS8s=;
	h=To:Subject:From:Message-Id:Date; b=C25tqPu79Bqn0yknEwa0pOffR/1pSNx6/+CZ66kC6heH12ifv+PnEMhoH++qg4UJI+bca4L0Ch9fgYu+2jt5IjcBtqAsSuT8cBEJ1rBJW+Cgi1WgTc1OvmUeOGVlfAYLIT4PlFO3MtdqvyryUvg9Tuio9DzKLMm5xdTxZG1oivs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlSnN29n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlSnN29n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63D4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744019993;
	bh=pWOCiEaF1PX9MNiT8PPpEZLKrLS70B3x1Fs0knkbS8s=;
	h=To:Subject:From:Date:From;
	b=PlSnN29noTS24SwI8J3kxwZ/qwGsbA22tRjvNbFiVCqUY6pAXNJRyYQSgio7uNKdi
	 TuYk9fln6IPllfA9oOtNWkCgejS1nAkxAI9qhcxcE6jT/gzAp3r+TdGnU5EV8pHVv5
	 B2muaa0UyMnOgokA3uOTfaQNYpjwi+fBV0MZo3gH+24BhOJmnRp1JYx5NWUxlvt2A0
	 /3e4qNnm7XlHKQzBv7FdhIkZzpNdOLBsjtxc7XXFPzfx20OmvPLp/TpcJKziXmUUeD
	 GV13Em2bNUx34yfClwhTxeh/ZTfD1Xh6IH9ML44fM287UFzBPltQd/HyXYYO4VndtK
	 ocEBZlILQfGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7BC3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401999358.3946.1507505507364069528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0c7a78b82c031bfea514eac20085a95a674731abe158497ecf996740f5866
Date: Mon, 07 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744019993
