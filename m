Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D8B42A85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720259723; cv=none; b=t2oZtThuCYACXBgujru8sanVhT+7MiKO/Qjw/5E36pxsYtztPDn4tlhFl4jxeNS9+CFSzBFJUJmDwwXlPYIhW1FNCUfXfJgTzhZo3aMg0QnFt9lqkZ7Sx8lAtm31VxeCDbqqP0IA7iXbrcxZ68Fv0GC7RVYWjQ1S41qIRb0uuOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720259723; c=relaxed/simple;
	bh=/W74MwJ6rAKAvHS5XRCmzDN6KdlVCt7ATUgSBYhBVDg=;
	h=To:Subject:From:Message-Id:Date; b=uXwQDPCU6H0s+NHc3e41Cp+6Du3zaURsoWUas8PKED5Ur7uVWyWxZQv3kwxA2+qrcoI+A5n5wRD/R0ePLkFahx6qI7rEtjHIcBd/47n5/29Ddrkfh06pOfBiC57lf2iFOl5l7CuYoOJl1tKeMSvupnkIwpPlLIE/d8vt3J1Sx5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBx8CVIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBx8CVIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED557C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720259723;
	bh=/W74MwJ6rAKAvHS5XRCmzDN6KdlVCt7ATUgSBYhBVDg=;
	h=To:Subject:From:Date:From;
	b=QBx8CVIugCSj8yX58id6bH+l6oYUMS1lzoIcxHbT56nl8f0a0uuCWx51cGmUzBO3j
	 ro1wBlGlUr6VKopeHm43wZirtfrBYvVZ8BbRZSnBql2f74mTu6vsadeo8suRXGQpCF
	 UZgVw2snKknnei9dpb64mTqxw5zJh6GQN7s8L+IlvcMGBdBVIxrb8K2IfMzfg1/l3t
	 jruAHj9xXAnalyQn0/T12ruAsnqcv8Tg6pAJ9LufgBT0k7UZf6/OxDFX06xuDANVl0
	 q3apn0E5JVDnU7EVqD3zIjyT4kUMxD8yIPJfWhxd46UZ3jA7AfxskjB09HVDhe6qbW
	 6Oy8lclbGsdiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D00C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025972283.8222.11424363558850702265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683ff1147244e5ddceb4cf143f79883fb2617179ab29072de2956defb674f1af
Date: Sat, 06 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720259722
