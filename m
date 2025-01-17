Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F78B17FAC2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737131754; cv=none; b=rLwG+Pn5+EJLWIzbLio6N2hiN08H7YafeawSsKZFg548JqDABZtwLDaVzcGPEaNtKzX6JMLr3f4jqbxWCwwYlQcQ8VWVfXiM69lvTUNZQSbFXJR3x788Y9GdVpoRmwn7Sx1a4uN8utp+E3YrETiUxvMBrYwRdToF6Cp5bIkNGF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737131754; c=relaxed/simple;
	bh=tveiHldhFbzHZizj95sCpZ0wrAKZbZzt8J//j4hGHeE=;
	h=To:Subject:From:Message-Id:Date; b=TD1N4HVCozQ6fbFo9mm4Dw+nDNV9l9rQ9AWs9iS0WZzShBo1plYl1Yi2nS/nctrWqeVwwS+Xbl0UDUNdcI52h7cEMRca9WFtG8m6gEIgpBRxLSeSUbtAizmfUH8TID0OpPW6sEBqDrMR87X77e07IVupdUK7xegmPlJ0O40eY2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORaXRpMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORaXRpMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0702C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737131753;
	bh=tveiHldhFbzHZizj95sCpZ0wrAKZbZzt8J//j4hGHeE=;
	h=To:Subject:From:Date:From;
	b=ORaXRpMy1Lek1ALsRVlG+G8zD5Xv4A0vY/ilAZrPD4VLRQVc8IsPpCGHSHmhh2XiA
	 C/Ejau+yMSvZIP6qMWf2e/YgUnm9bd1AilFj7zoum1rGMqQlwRXuIE2lwcZx5UWRwj
	 vER3ioQunym4f7mOXRiCOk7ErfEvRQsv2jxTjF0vCqgM7oB6h1VMRNJ8Gfk9ITnGeb
	 zmmoOu628o2Y5TFWvbRnySHfGREAHE1jRrLrmqMXOG75+lqTrBkv7FABdyc1u1nsMj
	 5zW+U7N9vijcPKbGBhpIoog7qfR7Q0mqLKOK2vx1ahMz3gqAFUPFIclmyXhnWj3c4L
	 bNQdZNlM8kEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B416C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713175362.26372.5489060080936436797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469b4378527beaad2a53266da1becbae34cca7d262345717173e8f6f133e1381
Date: Fri, 17 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737131753
