Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B662690EC
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772910894; cv=none; b=ZKE3EJFWABfszoZZh4rRS+qlzo5D1pnkY+gsZRyGRQVWpN9JhSDB9G4nJPlOo1YWbaCIhpWP7v92lai3SYtY7k+aD0aW5jg9dwXlkzooj7UoIC4hEEuP3lllG10DywfoA+Aa7M94w++3ObIEnkYF6gm+0HYSj1TT2J4/PNWPTrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772910894; c=relaxed/simple;
	bh=gLMtDhp3GibwvmUaerw3T3hmqzQQ6f/AIUTi+HhAl90=;
	h=To:Subject:From:Message-Id:Date; b=qqRqqS0a5CRzH6KY3SiuckkYteMWIG4h0VAwNBE/UphfaGQr7DbUG/Dqe8E11lXzac8ADk/WEXgkQsyy/IOa4Pw54Du8AN4bWlWbTYcI9YbLhI7QZ/+4Djfnd6Jk5le0RrXyTWhy9YTkUAITJWA8IoplkbT6z9eILaERODvUTGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXSzs4/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXSzs4/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BBC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772910893;
	bh=gLMtDhp3GibwvmUaerw3T3hmqzQQ6f/AIUTi+HhAl90=;
	h=To:Subject:From:Date:From;
	b=RXSzs4/dnOEVWlMXnjyogCQXObwfkfRJwjTMYm2UKQy1Nz7QEzZ2AatgD2GC1/Ct6
	 pwHr3SZdHW9wcXZ/esgFPuuNVzeq76132MkhEpHBAJffJcBOdiBaKlwAW6w2By1JxU
	 zFFf8ddlbGbch/9xnFpF2CJWOB7HWMdHnMcQG3r6A44ZKRWN/abuHX3LXcNJxjq4ni
	 P9zgXqYZH+1ztKybu8AmUXezIJnx4CXZx6GdZB6i1MevFQgYCdxeOIdyPl7LT/NC85
	 wdVhefxNeJpnnBB6rtE8b+noheLRHTHT4cbkCKvy5SfeZLRLY7CikKjgHgAUKN4Ijv
	 JYB/LsaVHXctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086EF55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291089358.14267.16723955509138680920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4cc2a2b18fd7976e109ee2cbc144a157336babaa05e0b3e3ef1f2f4bea4135
Date: Sat, 07 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772910893
