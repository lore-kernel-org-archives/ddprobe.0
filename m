Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4289B192D69
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733433354; cv=none; b=n7MvdWUmto2OjetKqHZxNSvc5nOqFf+xDVyeJlVJefgEncfoKeTa4EHd/r5RfV/cncJLBnXxrWxoEnq94nQLf4z4Zkj8D30xtzT4aD9ltp76ZF4Wcglrjkmej8rnFaD2a3eZgWKK934xOy6+7JO1F9MfpHEItsRWj0X3CiNvqCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733433354; c=relaxed/simple;
	bh=hiXL7I8Rc2tnDOOhcj7nwVmOkIng+omK/XnNML2yaZg=;
	h=To:Subject:From:Message-Id:Date; b=inRLRHW2IAR7V/jXnmyjSiBRAcWoYFDMHdR3V3h6OZDwtXgiA3Jz4+IMLEtgPQcAKQE92ZiQLywo9vytUBdlpmvl2aE2Ec+gQnQE8CpUWU/53cEQAeNlfmK9t5GTqbE77i34H+fnRUiT5iQcSAlY/Hfcvv0MzlxntjcHxpoP8WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8SDHFD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8SDHFD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C974BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733433353;
	bh=hiXL7I8Rc2tnDOOhcj7nwVmOkIng+omK/XnNML2yaZg=;
	h=To:Subject:From:Date:From;
	b=G8SDHFD15RetzGT9f7ERP7J4f5EpLqxv5xEO5Oe8451ISnn5+D/lrwfMGHuGQDM7U
	 I8CR7VFgbEYGvcORYY8lLm3xprpxHAbGarRSvq4VIBUPIOiDUK49Jl8q+rzDlDup63
	 4YtIiIzg1PdGf+ifqcZjFv5QEo4Wbd5HqUPikmKqhNcmRXfQfoOrHhjYpnUeJ/2ebL
	 KVpPWfqk+OdE6jFaUuyNPfVfsNF7oa+Ick4o71kXJmioAQ9uE+udTTtyOtxx8sr7xF
	 nhFxJqC0t9b+K1f/qJJL0bL2YBfp0kbaPPvlRKo0YHLo+j5TWz0t3Y0t/fT42qHBRB
	 45tIWgCp4nOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC74FE7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343335369.7463.12381039170175470853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad735fcefaea23b6f01e35faba232d3ce87d18ad96cb6503bb08117c347d5d91
Date: Thu, 05 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733433353
