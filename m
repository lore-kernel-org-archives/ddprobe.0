Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E35238D56
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749589193; cv=none; b=hKwidzAEMRoxf4/RNR6ypFqgzG4AAr3FuQX8v0MHkSFbfzdeNIpGfq+vdZ+U7m4EbmHtJhysO6PY9EkeIRv2LwlzKNOb9gcJxqiTqqf9XmOHgSiloSxmWnR8XgCVbOGFKbN3FdfWNns3VaA+mNJ4gT8TalEcxkzbsGPfE0liDI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749589193; c=relaxed/simple;
	bh=LgnNSdwsP86K7ys8wZzLjK0g5vXQoCJGxpWJH7Nn7kg=;
	h=To:Subject:From:Message-Id:Date; b=rFYyBiKLUtQaAAqI+ZoF08KOfm9UnNhACg5N6Ithiea+cMqbmpkzJkSPv74fWOKFaJZsVFcQIA2x9LK9fBHnGwASih2ujFNaqJJe4sUXN6Fd/r5/gMW6OLTo7NJyY8DadliBXExaF0ZEnv8hfRnT3QA/xtT7Xl4vM53DRW3+d+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmqACMTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmqACMTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A6C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749589193;
	bh=LgnNSdwsP86K7ys8wZzLjK0g5vXQoCJGxpWJH7Nn7kg=;
	h=To:Subject:From:Date:From;
	b=UmqACMTEPxaONoUOdOgBLf2bL24FN1yOxW//WDxVHctUbuy39tVtZ+Xfi9aN+I+xS
	 Zz8mziGMd5r4Cvf+YOe0+PQpKAEFXMLc5AYUB8pgCUAb/LS+mEzvI0iGPPMVqyOg7d
	 8MgKHtimc/xng+Px3v9tSyfxRYTm8cJO+r2jOCx/ROr+9cN9qzAzlIWKX5OgU40Gin
	 kLUGw1aKE0lK3Myur75TWBAo/XcFC36GEdaw9W5m5jpMDWxUzUjpukzOGvV6thuT0d
	 RpYWlF5djplyfjUSJY/CLPhZxURjY7b5/tzCTF1RgeB1IUlGF4D+5MOsdH+g0IEPNb
	 +oarmk8cD6gUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D15CC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958919360.10966.15652298894138486336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556c690dbfea435b5d6965298920114fdfc74ca0028a76c518441b61565d04e4
Date: Tue, 10 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749589193
