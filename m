Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C3F36BCEC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772621694; cv=none; b=bysQa5Y9VX0Vr/yT3rIADwsEp/6RL+t0yJmyUEuFldOr0b8rc4PjORwaMGdi07FXEpWnHHF+XTFTL/0hAScq+e0N5x3JBO68gSnqdcIwCJqYewGNDsBpTOU7jDi82k0a5CFrDrokF+3iy7qx2LS1TSKCTSVzCsYMZ0/cR6A8K0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772621694; c=relaxed/simple;
	bh=VSmG5R5JnOSQoaw3eByB/VgALZi8BPedbIJax2kUH3k=;
	h=To:Subject:From:Message-Id:Date; b=rDfIi3GB0xod+8nx/NdJLsQxzKRLCR4Lm5BwLhDIdYLnhEDc2CIZuTN6t+eQZExDbwiZ8k/y7TNYSQ6n8TlSsTgGyweaUAmlgsXyO+yYSWRIhFOc/+8IKrXWqg3s10SA3GLDFxSPr0S/Q41wGHfcrHItcbkVmbJIXs/oD8uEQXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYCMvovq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYCMvovq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B634EC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772621693;
	bh=VSmG5R5JnOSQoaw3eByB/VgALZi8BPedbIJax2kUH3k=;
	h=To:Subject:From:Date:From;
	b=CYCMvovqNBsvem5sI7A1GV6ki3ENasuRijsmtIYn8nwQ86bKUw/eXrkcfet5pIZd5
	 O6NazAunbf0OyzhrxOezNojm/3CLJuLpu9UVeFoI9a73MkIkQaC5q9TnO0+kwYOXF5
	 b7suKisCz0PPCVnz4qno6D+vF0QnJ3p+Vpxbt8UWEiftK9r/y3mgZWWMCBmwsTfGok
	 m7wlnewBjFQcXU7QAlLAlKGosKLTEtZoopWyIKzh2VuTZwxrBq9VgGPljTTLhbJU5o
	 xVZ3FJN42Xx7sr4AqCQM0QZ+o5ntzZ4H50wxW2lL0Lloj5uDmQcP4wcrSy62EAYzBJ
	 OZdoipHZjtQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF67EB7EC9
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262169363.6035.15257864990968172734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b9682d4f2bfca1f2a06a67ab1b4d728a886ac26ee9a909b6efe09d61a64cd4
Date: Wed, 04 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772621693
