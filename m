Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FCD2571A1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747722594; cv=none; b=LcGSGk/8QxU/Q3wF/hp+kmliqKOoePEJB7ger2eDCvRM6SFTPe9/2G/q0LmYW0Adpu2mHxOxtUcm0ViUPR6uH+PkBcsFgR3cTSZxxOy5jlzGnDJMvHG+f3lS+sWhrTe7vOUzwpxQtFdJ1U1sMIBK6HmbzvascRIjpjCxC5KRTlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747722594; c=relaxed/simple;
	bh=z4LIFETIfDCCMHwPN9CcWkT9lCXd5DbCE5dzMBxiJDc=;
	h=To:Subject:From:Message-Id:Date; b=q2eVInMzUouGF0/Ih/TZTssYOx3i6D1h+DO1IAKCkmbd4jKEPugltSBYo6jeeRWav5btGyCssV15aXapUZso+YSTaDbpUvGMmhsjTlqGHxXIB1OX5Vu2/nMFE03SBrx/fSAf7FGRjh0k14FkUFhKCcZobIodqU3O88KnJDwyV40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVcqlKRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVcqlKRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C2C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747722593;
	bh=z4LIFETIfDCCMHwPN9CcWkT9lCXd5DbCE5dzMBxiJDc=;
	h=To:Subject:From:Date:From;
	b=eVcqlKRif2Pv54jdlQE2EICrRgUXb9tbTuR62g2BWooaGW+t/fdnEWlRlhKleOWbK
	 uBZZXtDvKQEqLavXcQB3dTqW9f1PH4KGpcwXiRj2SKBNw0KKD/ynDbQuoQ7lG2uDsD
	 euYT2PXD5HnDU/uNlkYI5xlMQZz87GqH7R91WgEZG6ZUCc26k3hRE8WzudPzp6iRnd
	 di1tQjuLYkvYdYlkqIBZitAqdO64jQQ53uolKUOrtWrWfhHXo7qpGpkI3QE/kYanDg
	 LBJ5SkvGjKt4mCLZ9le8gYeg5zFcy326MifR2++jssS7gTCAQP6YIwnKV6oYSDvjt+
	 Q42Bqp4bg+d8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE00C3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772259357.10328.5713769291260418438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729135af3a2f2dc82dce5d3c7a8047cd4f9d302d2cb230e25fd8d38265d17e26
Date: Tue, 20 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747722593
