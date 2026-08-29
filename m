Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD32632
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787996435; cv=none; b=m7UDOnz/jjouSBJs3wo3BzW5lH0cz8rNUxbO4LebFqVwqSGVxOVjLBsyYsqyKWccNfCSbGM/Nyp9INC+wEG2lYsYdPq3dIUBAHu+bqwtS/fAWyaJsNY4aUlxQDf6mr2xJT0nui2Gtpws3QjEGgO+mC5TirG5SDANxpDKkpREAF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787996435; c=relaxed/simple;
	bh=DKbxT+KXKaWT3Bbt7qX+ArGi8HAziM29DQ2H+zXH9Vs=;
	h=To:Subject:From:Message-Id:Date; b=bBxJjJX9r6fih7gKm4hydDrcR6IXjUwiy40sUlSdf5vaRMSSf8FlOUkB8cUvT3gvaT9ictMjCqec9Ae83Np89Vi50+Dw5Tr5UeCmtzyCNl1UXGdl2kaklGDYLn+F2k2TAMAn0jemelNKlOjgLrWdE3mCwm0HF3HixNK0Zttk7ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4IJnUgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4IJnUgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22ABC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787996433;
	bh=DKbxT+KXKaWT3Bbt7qX+ArGi8HAziM29DQ2H+zXH9Vs=;
	h=To:Subject:From:Date:From;
	b=Z4IJnUgRhf2R2VVYhsROlyPaOCpTjLCN6XaGMJsPfvN1qamfWMWXl88hn0OQnh9dr
	 Qo+vI+M8kQrHyzOf23fn3crJzeiiMg1oJkyct8zDAAoX0LTngZgHLo56ytl2CRaAMA
	 jQtWmQjv776xYXgF2mbJhgIzrWpLAveRbOLvHwVcQSsSZ6Oj5C9EmGE1sRopZUOhEY
	 zUL8bMO2ZG3LKdIuuQ3Bhsgk7J+IgwtHSx6j7yMiGc0JdXqYm+6GqDnx5MRKzOi5+Y
	 6jI4qYWODIWN1B/q46eFFza/Z6pKPB4+JOs++emiTz+8t+Zca3ANg6xFa+m1jvaEcL
	 IG8tLrT2Ovcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04C2C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799643368.4984.8565538896219882465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5c750b1b6d168c00e1e9408dca2986d7c505a8e8f100998e5c3ff9864989e3
Date: Sat, 29 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787996433
