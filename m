Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9995FEE6
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748191794; cv=none; b=G+7aQiePZ+iGMPKesrOpBFF6uXdjrT+ukEy+xSVuu1tNI77qI+IRHIlMfjmXwI2eORSt3upSFumEc1axhw3Ea0DVjGTnthtbXdF33AveKmIA+6vOrJKjoZDei7e4/tEwYbkIBIemY57wNZgsXpsFWqkD/hPx9K7sBcg6jHYH6UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748191794; c=relaxed/simple;
	bh=9prpLa7iclJfqHh0u3FXDzaTuLpdb8NaacbZK0FH1EA=;
	h=To:Subject:From:Message-Id:Date; b=j0HRlZXtuo0u7v2T/i2Ms0GU2tMGPALGBRed9njCVg3t3XWfTpmSk81bcroGQ6S56L0N7n2Bwji/4x6ziu6qfDWjspAh4Cb+rmZs4A6nrNJZC3MuO6auW8Hkw+EVzRfMv1u6F+poPJ11yNtLZT9q7iRCskjCivdH2Zj7u1W8X1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awR8Y07p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awR8Y07p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7724C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748191793;
	bh=9prpLa7iclJfqHh0u3FXDzaTuLpdb8NaacbZK0FH1EA=;
	h=To:Subject:From:Date:From;
	b=awR8Y07pZQUHdAVcE4fDQXZFLgWRe+HQh42YXp+TzzL9A6nNrKwJsAM2ymUleKiRi
	 Op+GE4yO9cVm5QczchW3NM9BTSdKpsRoWAu7FIXZRivOKnpcpUaJAkfXIYg9EeinNE
	 MfQAoyXO0OsBB36CDUd7j7kOT+IX7DUQu1i7IGYG79KNhJD4Bczty/DWvR3jcEEzAp
	 /yNMF6tG3l6HInTINtcRm1vGXtKag+iZSP2GRPs4/au8UI1/q44h2rrRBtELQYl4tt
	 AmlM48QteaCUCXV71Ju9rndAJ59d6OYGIxe+dltxhKMZKZ6CrG7hcdltLKA0kVEXbb
	 21dRCulYc6C5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C9C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819179357.11984.13773445253020332626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f91156d33d333208abd0295994a5ce7253d9ccc04db4d2b495615956a9d115b
Date: Sun, 25 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748191793
