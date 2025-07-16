Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC948CFC
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752644394; cv=none; b=k6ZUPAr6d+rP/+9YjMyojTn3bkxqy40wYNExW8IsJgtA552oR/mjT+CvHpTzJ6ecHQxwbNt8eJol4+9ZKZgNwhsXOSZWbUlinlp/R3I+exhlkhB//igG6JPGvsoCy9SxSDYj6tq8t5iU+p3FCh0yEDDmsr2twtIqjzQKk4fUKxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752644394; c=relaxed/simple;
	bh=FEmz+oEbBfNTmRjK8gvJZxW/t9zMI2Hdd5Irr6fcLfI=;
	h=To:Subject:From:Message-Id:Date; b=g3XLxkFeZ+iHAMd2tcowdzO5TqH6WPDdl8eFERutQDUA5Mhf7EOo10+5gaZIauY/xmSX76jv/dyxZv6c0PSjZf8d5ONFI9cOBm2/8uVFowtZbChkRXzAum9Trvudx9sp6Ny/Jv7tZaWEPkGwu31C6mkHZhVzBblmiVaztzr0tA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFf2IS+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFf2IS+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D67C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752644393;
	bh=FEmz+oEbBfNTmRjK8gvJZxW/t9zMI2Hdd5Irr6fcLfI=;
	h=To:Subject:From:Date:From;
	b=tFf2IS+XcWfwNmD0SxAqjOb6MIqCIEeqUVpQGfXYRAYkq4ulNCX+IWl7pa/P0LvJm
	 PyExvd4OILECnCSbX/4r4vqyUOorMQcwYKUMj27MqQskXtn0QfAB0pkuWxaN7gbNwf
	 miWEuX7Th4A/BfRH2RkCnexQrQp3aBuittnFzmgNF2+83S2/tzQeGiJy4Mx18iioau
	 vlVVoMIM6+aE0FFrms2JotZ6xGwcM4pcI8bkntRCsyeOqK4Y+fWGVoRlBNcrRz/0XM
	 +bgB4/2yJFzfLFAh66aznPNp5cqt2h4Rdz80BEJIyjBQ8bBqb/E5ebpVc7UHK8wr8Q
	 yzMJsBKwNEtJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA8C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264439357.11847.6820283918946602464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6a87299ff9f07e254744187d385473a453a16f35ad55799016a995eebf5448
Date: Wed, 16 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752644393
