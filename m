Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B12DCC04
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763068794; cv=none; b=QFpUQnUrD8c775y0DmJAkz0UrFDgIYJzu6la6Z4/+MikHyTzL/qGFc78ufcsJWXzaLiXMUO+EJw5XbGFPWNEPd4diH8ffJJ7p8z9NFSnogf3KyFxnREK3iUOTuY58SbLKP8dNCEA4/l+oJ27iyrUeLnbzh08aD8gpEgz97KEmgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763068794; c=relaxed/simple;
	bh=LwGs6MSgB0Q6eUIGpF+yxYTTZaJqulZL027SOzlEQvs=;
	h=To:Subject:From:Message-Id:Date; b=RToPp2nZ0EotBb9P7VZlSFC4VzccqqXQz6G7DG4H9FGmUXsDrq56W3R0o1JIkirGk4ZLdtjRdBwq7Z1rXnt4YwWRduM47e+Im5VfjANHVp1/z2IFIemQFxm8kHrV4YBFqFfBLxSAlxUKEKRJTa/DtFxN1karR3igzsf6kPy4V9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcUj9I2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcUj9I2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA0CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763068793;
	bh=LwGs6MSgB0Q6eUIGpF+yxYTTZaJqulZL027SOzlEQvs=;
	h=To:Subject:From:Date:From;
	b=qcUj9I2nxIPvKrWqUbXVqpyYWEkETyyff7htkv3/WNlq2chxPfKqzD1+06aICWRb5
	 Mok0KAXMvwcRTdkUjT0LG62HmJVvTafOxn9T05/El9I0qdtSwom+x2e9eOjonYHnSF
	 prnwvHxMaTJ+EZ/woIWbjxLc6oZqUNntNpFi8D1t+k3n1HKag26Ky5LENHvTzsph3E
	 y29lFXDvA+RZVrG/y6zj0m4vj0jNPuX9XdKv2ulHq0IDbR/Woss2zFfOsD3qrblpaO
	 OTUoVZj2jDpJC/7E6ScmndsiBo9t9XgbZH2c9HD00lOvHi6JcKK2/1qrg/Gdi25zDs
	 8E90lJqhN6klQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E3CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306879358.9794.4084086836560413751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f467303019b064344237939bbfa7b0ed47794a45686653b49f4353dfb725a013
Date: Thu, 13 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763068793
