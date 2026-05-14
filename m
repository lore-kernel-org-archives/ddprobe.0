Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3EA33260D
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778781034; cv=none; b=qy1S72yAezG44VnBputNEUe3IkOpQcrvCgAgzVVDXjvEfExoEgzVmPwjhskSKj+7FKpjtdVXDlyzDcoOiwmVzC2FP2q1K4CdEOq0NxHvx0mqHOlHovY1nQwk9H0Eg2lM5pgkFCLGBxHnQGwx8CqpdAkM0vZSGg3Nvc0JMj8O2Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778781034; c=relaxed/simple;
	bh=ZfTBqgd+5Dqhuexn1mfOa8mD2inRILu88dq0ddL/AS8=;
	h=To:Subject:From:Message-Id:Date; b=e50EDdbE3mFwbaqbdIDyFNuwyiD8Y34x81SUNdPzmO3PFDkZT54Ftmm2+br4/LCcKk5ZvHKoW06oD1V6NLd2jZ7Nwlzw9FJv54UJ9GcRYaQEBkxdTT7xxsckLDulTfLl28O+bRhCNtiP7VfPNfG1z9se6YuEpXt3HhL/0bHcamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQFeUiOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQFeUiOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B722CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778781033;
	bh=ZfTBqgd+5Dqhuexn1mfOa8mD2inRILu88dq0ddL/AS8=;
	h=To:Subject:From:Date:From;
	b=BQFeUiObzpWpz3zwTlCnxHkaCkCq8JuOhYv7kg3JzdwAqUlXcCXwUCBdr/b07tA1v
	 RDxnqC0o0Da26cAAJsE22RVPzsff8Cbv/lRXMhwcL0I09kRe1ybpmSFNQs0cL6ZvdR
	 t1k2ZX92yRoYtHoilUugGfD2wuJEvZVBQX8j5LoK4D4lA5aBOSfZMMZiF12sSMpH8p
	 7+RKowtE6OA1pZu6cZFqF89I1OISPh9zgCkA2E+1kfk/liDgt0l7f4nwleVnAJaajD
	 +lNJmkBTefK9GYZsQwqTDQsk6tyW0D9gccKAdPwuCqyv1LBkQfI3aJuJCC9YKJHWIZ
	 8id4m9qxRWUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C6CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878103369.21469.13484793715044558811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c6ecd77a19523c94b0295b8553555379b019431ad6d46380d757646de0af43
Date: Thu, 14 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778781033
