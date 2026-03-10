Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0267C3DD522
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773178494; cv=none; b=K6qGT6cashIbkbj/AJeLdqRGag/2rHXFMtjASxRoAE5ecBvxKQFXRu0c83ztnt++U14zW+MbvAUkcNrhPRqDTj9wf/SCwaJedtq+/MC1FfxF7PcbCf6kL4b6Jw6ZCOgBL4jVehOMUdF/DDoHEWGu8jX7cjSG09GY+eHohdy/GP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773178494; c=relaxed/simple;
	bh=AMv+eeh/eRfr9ZqUIAThOesQup67lwUE4rGb+oMVi18=;
	h=To:Subject:From:Message-Id:Date; b=ZaRe25iT5qwRUeYirb3Xxk3lHyDUNRrqAkzVreWstiqCFVzhPFGTHV06palPOfDDzlKOvr9CqkQf9QW/hc7bTB/ina0qI+nCG8PdyJ1XvPRG1+lvLsCcRhfax9hi109EuC5HBUAGAj1NInRDW/avfB4URdra6Q2sGI6PUJu/cLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu2KTEDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu2KTEDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2AEC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773178493;
	bh=AMv+eeh/eRfr9ZqUIAThOesQup67lwUE4rGb+oMVi18=;
	h=To:Subject:From:Date:From;
	b=Tu2KTEDcCZ9rCUQy3sq8E3abnStS1ZU3yQ1wMkwAA+lXHwaSFWMJSP3aGu6U2wX0x
	 F32WbG+ZzPczhDiv6nDTZruCjg6m/NVOvcx+o9eM9gmypW8kxHSogOzvPvwZlHOcg1
	 3/84o4FpK+20qSP47Sc5GTO/aMfFy+1BjxPocgqpYgqQ8tb03OYhe0uBLze9rEI26d
	 B0cTSPvIG3r9yn7AA5dRzxrnkOKzF8rdv1ue6D+vd2IYa4FO20m3UDSR0JCvdWLDSO
	 zgqaYsZIk5MV9nNFHdMgNpOuG7tZisD0/nof1JwONHOHnslxXzw2DaCPQuYBeZO4NX
	 Pj0Bz2c9CYLQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66CEB1076
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317849357.26851.18275657823875857003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc89892124266082824f906f7beb4b387be27da6ab2cc520f42189bbfa1fbe0
Date: Tue, 10 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773178493
