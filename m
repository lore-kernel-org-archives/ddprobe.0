Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E1B26B2DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776809853; cv=none; b=fhzgroa8Zir0H2xmgb66UXDLhP1nLq50B7fvGf/gAYniiIacv4X2lZJe+QI9xfXMoFwwW9QVsjzBGF/CxUZNB6c2E9sJhggcy6lblJiyTX6ve4LqnnWVVMi+q5o0FCuklBqkafwjVAvnHFTZnWhTGJ72KhqIbDGwEyi+fUrs3vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776809853; c=relaxed/simple;
	bh=mdribmUqJ5DyQBaAqJD8rVukRUX1Mni7HzWnDzBVPLs=;
	h=To:Subject:From:Message-Id:Date; b=K9m3uZFOoF0RLJQemjJ21rRBlXFO84nXh/ABkykLULS/K+ZSG5404TQO6DXQK2QdXe9b8nfqz4ayf2rIRTNxV97Vcl2Iq54h6dTirseekvYqzVTYZFWWbJsf36F0zUieLAcvr61vp7x+r2A6BYQulbKYjFfjRH4NJXlp3+ctT7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFNxLz8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFNxLz8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC206C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776809853;
	bh=mdribmUqJ5DyQBaAqJD8rVukRUX1Mni7HzWnDzBVPLs=;
	h=To:Subject:From:Date:From;
	b=BFNxLz8johgDtDfBxjR37DgVKZ389mmod0SflYQ2OGdP6rGPv7JTzJgazzhsLky2g
	 E3bHnyZnjX1zADuFxRMDr6O+B/kveZH/wx0lhfmNyx4Gefu9iJm34snQkJwzPb3OR8
	 ySistvFOff+Cx/c4H2oOGa+tqRFpMdiPmmJcV1lBYO0X/sXiRXn3Fb9xAFE6WBCyai
	 visr3p/q/6NVCtXStQTZjo7weK3g9/u2Zxe6ORIqdn7dB0W0v8p86xLbWvlHV9zQuu
	 4Io6LASoN33PgLASO8odWwrVL3oSXSmsRLvrEX6m0+U8xbsORcjBMvDHPYsQHzy/1T
	 PExSEev66ZPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA85F94CB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680985369.18438.6830181042189810167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef0dd23af1c692efa37f2e8657100d1ec694750fcbccf7ba313ba9e48dafe09
Date: Tue, 21 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776809853
