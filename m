Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51127466
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745327394; cv=none; b=eC5qG9QsQ28Vfan/fF6O4mooxGlQmzPpDku16Q5QEMJzdDQOWRsJ2xRZ1CIHJYYYS6nxhBbg5wg4+zzlWwpxCg+F/AK8fgNgrXQdbuDHdQqu4E0diUsGuHBDGIGVoNF8ukzRgyOdOgpPlKBTWh6haaaH+4Alc+sqeG722u6+Vko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745327394; c=relaxed/simple;
	bh=CgO0rf8mmxzoSBhnOuXOaWYWk+SuKiBfOSB7kNdEiNw=;
	h=To:Subject:From:Message-Id:Date; b=nOyXC3vZ1WlEJiBO7y39achX2+l4ip9BtbO7VWFAJ0k/JHlIjusDhH2FNSvNpH233duCt8+Eh09cqV5ndcwtkJSgvNxDhmzWLm3h33LQ6ndvISpXNheU1DwN2w57ik+au47Wp1SKfjeZll/mX9mblTJb0oBel3G5ojBy7hrkUCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmvumtEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmvumtEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745327393;
	bh=CgO0rf8mmxzoSBhnOuXOaWYWk+SuKiBfOSB7kNdEiNw=;
	h=To:Subject:From:Date:From;
	b=PmvumtEz7/QlMgaDjz4nreAp2C6RSw84Gn8Qa3pdlnLhaTJcLXz+32M76Fr4OHhIl
	 GEjX0QQzhl7i/jQBLy793xI2UE4MFm9Jw0FY5fqI6jJ3GxLCPowgVSJv/UWPw7/QAR
	 9CkkUUh7LQA5g0VOd7sCIymrOaE7YdDoJyG6KCjj70bMhrFETh4lfkImlkAoFLPX/D
	 RRkqXBVBdGVn+n+X0saPQ0cFKjXOOdkcZ41q1KZC31yXp6WgAOfSmXBxfelKogdHgZ
	 ZV8lP0KCVtfQ5Pqftsp4JnOS7ZzZcFifYXLi0sCPDCYLC/C2pThp+euHdpmcmu5+S+
	 vmBjcjyI+MKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136AC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532739358.5237.6417152707887589337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061758574f261b877ad51ed2edfe8b031efc321d41f9d7bd4b0a17937adb92ed
Date: Tue, 22 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745327393
