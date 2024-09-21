Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F2974BF8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726899954; cv=none; b=Id01wzAPenAf/Me72JDHUc7yFt/1sGY9oVbJyrU8yeapT3O8x7H5N/DgBSRDC1jz+D1cSC4SnvasR4FypACjlju4qrdIAt5iv/2zXAoslCZvb5sBNallrDyRzvKT3+jvEzZGjvvnhi7HKM7vI5zaG16WY3W5JjCcyeXmU+lo6oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726899954; c=relaxed/simple;
	bh=p7bVW/mgTuJG2wZzbhZm5u8eqocmvpJA3E7Mtb7eWfw=;
	h=To:Subject:From:Message-Id:Date; b=knfrv28qWjOrGcWCLdWLS6CcHZOIVKq09tqyFAnAdKoXmSgfX9OK3heyUkl6vTu6ogsu7wzMNoERo4TO+URdhap6sExSdWNGhyQ3++pLx1VYpgTkPtf0+JWgI/+LkSqK3LcojqtmSsnRELL3Lhz/nKGi+FQx9TB6S22k/nGBNf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaIlyNvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaIlyNvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD283C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726899953;
	bh=p7bVW/mgTuJG2wZzbhZm5u8eqocmvpJA3E7Mtb7eWfw=;
	h=To:Subject:From:Date:From;
	b=kaIlyNvLUdBvM+CfFsNlwpq16DXy/kuWy7SjQqSm01T0Twpe6+UboKMWnlj2Cj3jR
	 wpctx/gqlMnmkrQkQg4LvImziMW3Sv/FgQUCV4whxt5KYMRyzTd0CHtadCHsC6NP+J
	 zJuytTg8fR3aqqcyVyNefzbhrmQy+NMCzi7H7PUIWqTE3ZItKI/N6qtkyvNizQo0US
	 WyniSzoYnBNY/sjGYx2qm6vF1l+fDhCnW9stt9tJCFVlXTfComw+GkJpj+DNDVGdll
	 hQp/sF7fXANQjjFaIW68VWEp+w9Z3awj1zASzL+SxIiJk5wE+DMzGZpH7U+D6dAwvM
	 6MJDKtLrfWPIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3AACF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689995359.6472.6585115016590806840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9e76076e06393ab819cedc5ded1d398b3a0878435b8f021dee8863b7089cca
Date: Sat, 21 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726899953
