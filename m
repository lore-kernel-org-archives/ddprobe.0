Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE9E2FF155
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764920574; cv=none; b=VfFAX53FLKt2T3Q8LZ3FrFNFiK5IveWizA9qnMAeyUUxe+p7GogAt4vkY2PEtf13hTKA2fHU0ymqkNw+3gwEd4a//gAC+PDvBryBMVMNyEIclkcCcs8b8OBApxxaI9VIA86pSeWeA175wZcEykk/xT50yRK2P3GpGI6ttqxIQB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764920574; c=relaxed/simple;
	bh=97ipRa2Dde+oZ3V++mgMdxKF/zCSr60tRo5IlrcRaxk=;
	h=To:Subject:From:Message-Id:Date; b=gMc+FQTqDXVPzw/PpkZ63gK2i4+kzKEzWD+yIZe4EdRRCQqgRzjM7RA10x1+O/OAXwifOsgtEUnKhirPxkIHFHYQuKeN4LJ5tNhVXah0vV4CCpmwnNCkyb36Ubh0elADEEG8h8lv+TN0a4ckRownXiXNAlJDQYyJBbJWOGmhQvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3DhLghF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3DhLghF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C38C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764920573;
	bh=97ipRa2Dde+oZ3V++mgMdxKF/zCSr60tRo5IlrcRaxk=;
	h=To:Subject:From:Date:From;
	b=F3DhLghFWYk9xjzT9CsaK0+s5AehV8S+XjN4smO/gBU0xjvX2x1K3BPqI/jFHKQlK
	 miltu1sRIhNwT9Va/LqTF0n/ygaZt6puJk7BRw8bUn1Qm1G1lfFTyqW6Pp9YT8pPFV
	 Qz2QkTfOUF+gsoSZ+Xh+kJHizi8Stx8XBGGjUTV0ykyHJg6DOEk4zoGfDb9U8Hy2s4
	 bxF7xg8VNzp4Vdmj1GQJw+dvy6USPwTLUQZlTvNLAh9johlljaTvw/Yh90M7kRjyTc
	 dSe9d/2daw+0eVp3bHSUjg/lAn1u/bSdyi80pl4JCHYSWKuIdhtlhhGln/MB67XPOf
	 wiZBHGLFqwveQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9331FD2E01F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492057359.10661.6990762026811445759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64178b168806ceae9ac835d8ecdbdb2637504b815055086c30638ae3091354c2
Date: Fri, 05 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764920573
