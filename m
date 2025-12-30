Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5A92989BC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767096833; cv=none; b=KwvVQ0ZWuLeLHCM7ejjc5TM9zlxU16tO/WSZ14LXuHdydVCcWIWYWvZUFsGd4iDrSdafcV/jvrtIaGFZnggnKyYKGL1+J0tbS8ePFO4gBRk8lbfZptuJYHV1IYhsQhdGdcht0toyigtkgg3UIFdl+mrEsIH+FpLcYOkwKd6eUG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767096833; c=relaxed/simple;
	bh=DxxUNtHqAeUew3Zti13QrYq7lVEsmG+tFZ3h0DtQKg8=;
	h=To:Subject:From:Message-Id:Date; b=An3rXD+Xf1xcXSy8A4zZ1e8qn3F3PNYuGJS/uLbHD3ulU7ElZg9tksR+vWWcBVhOOlThb7yliq3Yczw+LBsnQJaSm/wVx2lSvo0snvrwWHG+lFwV532z9lgJ/kvaQPom9HwGTZ3zFIns1A6EoNI4w6Y23bx0YDyRsI2cCPCobpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcklYEbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcklYEbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767096833;
	bh=DxxUNtHqAeUew3Zti13QrYq7lVEsmG+tFZ3h0DtQKg8=;
	h=To:Subject:From:Date:From;
	b=tcklYEbMdXrTeiZGt4E8NB5egppSN5Kh/1rY06aayuwsoRZuAbulB/9JKNhMSHKXE
	 CQyaYIRn+wcYYrufiRUQyWRcpb42IhuBe2jLgBJenhjPtOdPm20RszJdHmHUlFz5NV
	 AbaAQo/E6EfqODfKwGW3a+J2cpnjUpa0MrlgxQa/vb3cFci37Z9Wf3D7DTsqRCmO9M
	 jj+rc90t5OgkCZSS+MJmtjxT9mA5md2jEcWZb8jZ7c3hz5OXkQFNOJx2iEW8JZBvMC
	 Rhj+bsaDGNf1Eu8b4bEZ8M1AaRkSFIJqgBbEOtmd/WRRWttrsD8HCUCBSHqDR7iQEp
	 RWx2FO9FmY5rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BDE95A79
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709683357.18638.17511926091290545525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1a2207f7f9446a2e6b8878cf237b800063c96399685648a703586ca99eb5fc
Date: Tue, 30 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767096833
