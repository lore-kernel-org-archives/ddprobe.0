Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269B6349CDE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418074; cv=none; b=o1mJNDbHC6xasT6NAJmfZfLsbFNlNk2R/F3w2ZQFZWD0PI6eEmeAraV3hfFV9ToTuA5ONd3oENqkV4JblviJHgcU7v3jKHiIVxXy4j3LXvOiuAeIRpQrNDbJkqxCAREZtQjHgZuuAdOUAdrfL+cD13sBF6wXUp2cTUYjYZ47eXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418074; c=relaxed/simple;
	bh=XT/DrTv+IYJqsEx1myj8aNi2PlnK/ZAZfOF6wKXWJT8=;
	h=To:Subject:From:Message-Id:Date; b=thZXYLtBa84gkWWvMNbYAXZEBZme+FlCwA2YpkHCkUQbR30LoHLBLwVLhEf+vMM25MxXQUaJXlrR/qZOdDTwISiIAOoC3h++QnLemqIiAQJf/Vwjat7mZ2oFVp/1ojPPQMn03LQJP2ofE9vvN3ZkFyEhFe3UuFkhdzOSc0o6gm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7XXdhy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7XXdhy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CBDC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780418073;
	bh=XT/DrTv+IYJqsEx1myj8aNi2PlnK/ZAZfOF6wKXWJT8=;
	h=To:Subject:From:Date:From;
	b=o7XXdhy5qZpvvuA0CzSurQf7qscGrajjibu9JF2SdyPJ+7FXI7drih1Z3zU2fE02M
	 Qtmks/lURKnxVzFg+c2dAGOXEj0oeeVzwDboNjY2YBD5QZC524/Jge9LiUw5V01lr/
	 448u2EOtkOLI+ZKv3fqyLnA8UWcNDouZcF4wb3WGdeS2qrEQj8e8ktAE0iCOCgIB+d
	 QFxtYPpW5LkOQhvLwn1Bi2gsci7ADSPLUQbXwNtWWAt9XuLkZReNXXpmNvdlJed1zG
	 aYLxAFd4YlFlc5IgulnmlknECJBQsvRiNbt4A2ri+r83kNDnAshNlhl0FoYiDR0jo2
	 zWM4GaHAJ9S2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF09CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041807375.8493.1996002054244463831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68280c72d96777faab0c7ce20b11913061c640851f8b7330532710bd273e89aa
Date: Tue, 02 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780418073
