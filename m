Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8309546EF66
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785852634; cv=none; b=doNFCaHJBxznDJeWLxbhP2870Uc7iXekaPPZhKjBhbdSz73pVZk+LfmbPLwQIdP7be+vX3P4u0Uo1m5e9ZIWJ92oZVVx8YBqz1olnVyIOtPd4ahrrUZ+tvJwFlH7Hrj6hQdG6ptYV7y/RaxFJR/YKu6/05+gGaM22BOSsEUd/J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785852634; c=relaxed/simple;
	bh=k/XnT3DzvqZ4AiKRbQ2K53T6jyKdhVzvQxUeufYt7FY=;
	h=To:Subject:From:Message-Id:Date; b=MtJwhiCQ8JLUaVCUayPrglpZ3O/B0+SuB9SI+alUQisQDUYPkkQqPUc3kKXcYlHxSNDL9IsU+C1mPWaWLepE8Mfv9wxTEqVr9bzptFk595sZ3tM9Nle9eIuV+zeLLrRNO8ZdgAxHnF2KBjXeKC5cK3sSs+lkWFhfED57Brfv/lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxuulFV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxuulFV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1AFC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785852633;
	bh=k/XnT3DzvqZ4AiKRbQ2K53T6jyKdhVzvQxUeufYt7FY=;
	h=To:Subject:From:Date:From;
	b=fxuulFV/l/l4RVjKT5ObbcDPgJWr5n0sxfxsOUtND2r8SQR/pzdwvrPNsMk3CPSes
	 95uMA6C73htnDCsZexzHpPRxjp/qGsqBmM1mygK0hEVhmPwbjsP2ta2dljUvMhStYY
	 2+0Ff1z6r8aMloza7YCSVNQimSzbZNtctjdd/ChVR6YEHxvXfLEQ0ggKi50TnMWAmt
	 V/CgKfrxAhd1o4GeW7EZ21Ld72bkvjX6o0UDEbl03euEevBHJnXdGNcQ2UAYchmti+
	 mT8T94JcSTw7jDFKZupuTBY/55P0poGJMKPvX9YyRBkMP/yzYCwag15z/jwfRNPStX
	 smBCvaMR8Jwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F2EC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585263368.24613.10462654518668622672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8332486cd7eebcdd7c8455d11c1b049131ea2967d304c7286ebc762b693069a4
Date: Tue, 04 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785852633
