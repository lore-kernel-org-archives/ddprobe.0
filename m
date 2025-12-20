Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397207262E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766206434; cv=none; b=pLa5ErnBktxXCrIMgzlNbDO+w1S0kMw7mjSIaDYoh38nCuWe9PbP5VpthUpIds7R2+Lp5tBmQcynt6ZWTT1ja05sC7ySs5umdFqA4seb8Q9wkOH1v2roeMPi0uslSiJthMaMy/+HYPeMqGjQ7sFaD49MGzc06Sglv5EH5YNuPIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766206434; c=relaxed/simple;
	bh=122V3och6iMGVWXGfVnc05g+HRIq6FYdk0Thu/Es+/I=;
	h=To:Subject:From:Message-Id:Date; b=h4cg2pwXagQCXWleXDSF/OEI/vkN0ZSYAZfb3SHPfnBwuXyk3h4CNx2V+BqHhcyjdSKevBaiXLbUNqfpOC4q1llYQ2Tk3uiHc3F5+B+NL22rq3ClkJWbfM+5HLMMXN+OkzL0831g6u/6RRfThU5F/wXP0j5tU8xdr1S4XypnQXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6u8BIC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6u8BIC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B401DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766206433;
	bh=122V3och6iMGVWXGfVnc05g+HRIq6FYdk0Thu/Es+/I=;
	h=To:Subject:From:Date:From;
	b=T6u8BIC3F4W9KVO/pCaE82Xb2/b/E3yy//qxSpg3s3AHw8rnk+gwL4O4/sEyMzAdu
	 afMh7Q7l6H90IFXIIKkAI5E1T98Axcq7czqrWt2YXHQDic2ODdo+rk9HrVIsEwN4do
	 tL0gqdqWNuKQpDXTSPEWKbwDLBC3NHnVJw+JeYRg7hdoOtHTxAZ9yJ3QkWPkfUf8xW
	 LkdINNAXa/aKEqvxHE+i60NJ8iLFHSL+rIUBwaLqWOfYkCketT+n8MM4KlFmqP3CVc
	 2CqO3gS+/E1HTsO2Wq7FEV4o/+f4W0w1H1SIJ3+6+Ob8/KixZtox0CYEMHeKpmre+G
	 8CwRcA2ZqWDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55AEE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620643361.2635.12226022733892825235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173089e1a098d9307a9bae3a85738d8d841689be5f33679cd2f3144b7b30efbf
Date: Sat, 20 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766206433
