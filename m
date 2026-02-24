Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF84396D20
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771939494; cv=none; b=Nn/CEadvsmu9gY7D2d0eTI0Gzt6IcrQ3ZLFAYo3VksCwzM11r80KSrucXVTh4h//Ukx1zPeJgA0zjfCiL+HbgDyIRdK0jEgUka/mzAIXU3EKwKTuPny/9gz6WWXh14vttt5r5O8kJbkyz63ySsLNmxeob6JzJkGO/3HudN5nfR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771939494; c=relaxed/simple;
	bh=cS+7R5TP7Ynn5WpBmUEoKPWgqf0FYajzb+pZzMRmWu0=;
	h=To:Subject:From:Message-Id:Date; b=JWJAvdhbt23RsMbItcq9vhuXZvmXws8twx0SSP3ve3Fv7qzDTNQhDtfv5od0oYf0ZTt1vj1iF0ofkPIFUXH6lfVnUO7C7+Rv+oBfwy5X8i4pX/nWtSFe0PJi5DMBsQJCSISuYusRv7iVlbQrBzd8zhxnhniZ3EobdksWNadkpQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prPZJ7AZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prPZJ7AZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96CC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771939493;
	bh=cS+7R5TP7Ynn5WpBmUEoKPWgqf0FYajzb+pZzMRmWu0=;
	h=To:Subject:From:Date:From;
	b=prPZJ7AZ7ca8IDqAwkSf8ygrvWt6QfQ7kI7YvYcLbdYyz+LkEINPrQ4oNTze+UAVA
	 TVtXEFGIVZa5bxRSvD4acymHlzcySboK3KXQOxHz7z6DnQxAg/xfeYfl1dh/ksNIy/
	 KT15fTuDeCT/anRnArWqd3HeKLL9xZiY3mI8lAfwCPO6IhFg0zSEk9ArUzJxaT4bRj
	 HnSieEMSapSttwyUKUIp5WIPPX0YDzaCD20QRSE4jcMt0YSUXWwkE7lg1I9k6rcPKA
	 lJ011uy7fAwUxml/h7sbgt5YkQMqL10rpWjWYbRCEw4uCsE2L/41HPUEIJrE/SAB2a
	 0VFRRX0ZOsfeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BCE9B260
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193949359.8761.653447994451314625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974b9c47cfd7c8d9a5d72ab54675d77de6363f7ae6a0505eeacf9d639aa09ad0
Date: Tue, 24 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771939493
