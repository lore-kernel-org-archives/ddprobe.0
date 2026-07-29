Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF1344B67F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785318634; cv=none; b=vCVbT9T3CKTYVMAfWgZB+TGAMYzadKWFxmrlCkx1IkyUSuoAnwgMQsxgb62um+Z8rtNtg+Wogwv2tO83TdZosOLwOY2neMSozse6pS4a/x4LfF2ZvVcp8P7pzEVnxjZsGGwh7xHHWqec4Zg0RRMazNR+mYC9Brv9QkaEba7HHEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785318634; c=relaxed/simple;
	bh=aOD2vnB+J0lX1kC8Iv3+CcHX6lX0zLBXlc5c6A0cGnY=;
	h=To:Subject:From:Message-Id:Date; b=ZwbByjFWoVWvkA0cfiwHtstjy/x8TocEzgjdB0utfPfFFwe/N5WqVEADJLi9lXoM22VaFwLET1HM2eDba4+9RCuwvMnejRYJrvuMRLfTHk+m9pzWAMUr+3PO+N/x/SRyEF7rXyS/EYXAC4dGZlLWYOBniddwMjt6bIHW3bOK2IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWTkDR/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWTkDR/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA993C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785318633;
	bh=aOD2vnB+J0lX1kC8Iv3+CcHX6lX0zLBXlc5c6A0cGnY=;
	h=To:Subject:From:Date:From;
	b=ZWTkDR/9s0uPNa3scrP1aXgpE6LanREerLLymQqV1N6fNjwI1rC4NL5Rw8rEPChTe
	 5I70Jikjaoe09ZMxLHP06F4/cOoGfhRQqbNThxezt+V5e+4/QIaF9pdqozqnWxRaaV
	 rETO6q6VHjhT8JsEJOGfOrrErSurL+Xia+yYRar2L5mpEO01H0B/NKT6cT2Xug5Jgi
	 +iyMA4vUk+Gdbo9rGTtS+HO5pzTkRwH+k6yVXp1TUBxb5298T3OGjd5epDe+UhxNiu
	 BIv/dJupSApddymLK9JddUj/sybG1rn0dcOUwyuo5CgP39B02xDXMqHFjhfd0M0IEf
	 38iLvwQ2DOo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C48C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531863368.31539.1627785918102033209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8f2fe2001ddd64e38b379623575fa88634e87542ddd1cda660cbac99c9028d
Date: Wed, 29 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785318633
