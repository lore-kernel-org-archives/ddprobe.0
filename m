Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479FF8635D
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744569594; cv=none; b=Z9wfcL/OtEPPpeyQGwMJSS3erQSEM1HLXkfP6qYBHBoOm/kKAWdkfcTULKzZcugevAnrL4Vm/19V2/jvZP9bZfvWAr3cPty2ndKNClxsTctSJCzsDxaCZZFgA+tUnsR/PkcpBKlh2xfBZ/KkidqgDlAVwOUOAyk4RLJ/VWmwP6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744569594; c=relaxed/simple;
	bh=0U+oUK1I5WYW3qJqNW58OcAGysNIG1tgngaHTfey7+c=;
	h=To:Subject:From:Message-Id:Date; b=Yz8L4Wh43+b3OstJiGH4rrW6R8CKN6piN2J+55OHVyRoO6kKLDKHhVyug8DSOZ4mTILd/tb4lHfZ+32UN1rSDJgDFg6kvVKkuDKTtwGdwPhT8x8okIxopvvshKmjMhfjqEYW58VMR+6JDwabJ3osVVuZ0BIcB1dUYHpudEvzN8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAOSaeJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAOSaeJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF646C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744569593;
	bh=0U+oUK1I5WYW3qJqNW58OcAGysNIG1tgngaHTfey7+c=;
	h=To:Subject:From:Date:From;
	b=qAOSaeJknQR7lME8Vb0EYchQIL7hGBRIGn2OUkMBeFEMl/s/jEmKHhBHmqzADKe4U
	 3hJ3t0Sbq7GAXrH6zwTemoMdhfUkQBFxjHoJTTR67uMmSo/OoX7leHZhgsvejTlTNF
	 OJLSIQ3RC0lGP95NXXQqAogKlmXJVqx4fk8ZACCxCTxk67K8+zpyiGu/anVfYNOkPD
	 kD5eo1u3/5d1EDSDM8MdbROy/DKp/0E6bcE10oU+qKqlVVrrQVgL0wuOwQ4CHxAwu0
	 8zi5sK9f296StYuWKQFh8sPSkLpr9/G9cTcbB6qQZADvmlZRgUwvuf7biXsn4XfM7Z
	 VQU5blXxcfxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCAC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456959359.5904.10019110849411457219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3889b3650a2fde4f743b55a561c3632cb974275a083597b28e30eb2d305b713f
Date: Sun, 13 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744569593
