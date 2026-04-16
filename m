Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141AA3B2AA
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776357454; cv=none; b=H+4H1x0xhrMdU9Df8kNogaUz5/HtHcrC2vV/VTajn+rFOC+Dmi/3Og+G9PVm8CfiYdy988ST93vUUXTVKfw96a327uqI3E0dCRKFCdLhLcXEh3ljwv6yPY9PKgqsS2uu3VpQlvEOuB87M5BJNmbO8G3YlpjwEBQDnmWRiPxQibw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776357454; c=relaxed/simple;
	bh=OYyqbYoxMnWgmxa0FXUXM7FfwzXw6QCd6eMSMP4Mw6U=;
	h=To:Subject:From:Message-Id:Date; b=aK+JGOytbryntpODAoOt+uVnaCj843Zb3YjaQ3n8dsgSwuQyb/f6K9BHQLFFrVcLwUEDI4aZuMRaKCEI0kR4g8BDQA9VzFtmhxeT85+OiRVeKDrjQFzdEFbMF0Uy9AjiXc5McHWUaVfg7rgVkY0SjTYWvButnY6B1yHvHigdHQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5zvh5HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5zvh5HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC85C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776357453;
	bh=OYyqbYoxMnWgmxa0FXUXM7FfwzXw6QCd6eMSMP4Mw6U=;
	h=To:Subject:From:Date:From;
	b=C5zvh5HY/uc6zqCmqv+bDy7kwVGN6yJidln8lu5rsI/5bHKlQPR7pfFdxVYIG6DNc
	 Ep13A13F/kiBFC0usysx3xwIV8CgVDrCZn3n9EVkis6MPS7stQUn6sG14I1MzOSOU2
	 osyBGHI3uH7Xl0yusZ0/wkC+AxjLGegeSKkVleF+bD9WEJB8TZ9tD1S8Hlf10S8chK
	 bFYfqv9Tnl4RyzpcfwIG7NofFZc/GHBpKTPZaDyJDW7RWVyQI1TMH/zUCiqW1MZd9p
	 DTISQ2JtSVuEmfOg0wb+jjh8v4/Muzab7bo2WrXCDo06m9EtuYfz04ZcoujQ3X7eqh
	 KW14K4nTT0d+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE957F8D763
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635745370.30066.4411685991984835838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fed418604f6ab2d1d2fa48d166bbd4a25f3baed12330c475b0e4b810c43b071
Date: Thu, 16 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776357453
