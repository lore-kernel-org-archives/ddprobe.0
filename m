Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D562E64A
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738935954; cv=none; b=AsBELcGfqvKfjNQak8oePpNBJkqApwlIbIbRAD33hKkZAbQaDYkd5TSlvZt9gnjfY2z2cDKzdSd+Euq17Xnj6a0lNr9XFYEn8nf1XVKaBBQpLV7MGVfFLhaQwzbOz2I7skUVKM6j/ep4WTmovvcKPNuOVQu2IUAce/0sgbih1lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738935954; c=relaxed/simple;
	bh=1xfsn5OoNr2vbMGgrmnql+QXQb0ROh6Fc2E2E144HCk=;
	h=To:Subject:From:Message-Id:Date; b=hpHLhkUUkCYpyytBjyJfZWEqRLUs99g9M5/L1nXXy7bYKnudNMwrVSnvp1o8n+XLlWQF9wrMcheKTF0ldv/kaVWrN+iB5FK2CT6jsU5ANqbJS2yBdCqc+6QJqNEY500ltBi9IgiN5dHRrDxdGyoO2Hx1n/yev1U3Y+ylTofxQSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxl9M+B9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxl9M+B9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD6C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738935953;
	bh=1xfsn5OoNr2vbMGgrmnql+QXQb0ROh6Fc2E2E144HCk=;
	h=To:Subject:From:Date:From;
	b=Vxl9M+B9CTRmNL5lyIJJ9e8qHGtx93sYBiAnOz6XoF6YO6+cYscU7nLQJ+X07RUX2
	 2EeI0X74zDiI/1C4+hnK8GDoZF7kmGDE4AmSPj6xG90Dlb4g/NwW52TKIKOwIjQRq9
	 bcK9u8M+hZpLRkzwqT64PuQzLaU+qkePyrjDIW5B3OhfCq9i3H7t9v6f+5Z/dFP1CA
	 gfEZRCywf7d12P+DRxKu2+KAPgF43tIZdajMLPLfXtvupjdJcPUjdovyicHCT0cLPk
	 3LPCd6CIbHKdFGUi0jDSpugNH5AI16GkTfLx1iHVdYa7/jEnrgtAXcj6bNbztLtCI7
	 +52kuWAP0Yllg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7B2C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893595360.22864.4804798753891269786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9987b1f0085e5094e336b2e8c99d4ca8779115fec10edd03beead0cea2973e
Date: Fri, 07 Feb 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738935953
