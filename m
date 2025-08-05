Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D5A1DF258
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754413794; cv=none; b=lDHFDhxrM4iMkLDFNDVeUY2nBtums+JWL41O0IOP7jwUsw6SiFT6PCktektfDjCaN/itLyXFWb1yEoUkIyqJ0V9nbtm4azfMHSUH1p222yEE7lziea1nZWXpQpGzXkf0QA2NbPTawYAzS4Qq14rCV+jfO73q1RFfTemiioDqeXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754413794; c=relaxed/simple;
	bh=7K0dWesHU8rlrMMDiJJ7/CJhB1NRatfLTLMrP+dSG3k=;
	h=To:Subject:From:Message-Id:Date; b=msOHdhDG9MBDxOqqEY5llKPYIKK7oP+jUYReNVu8KEBKH9c/9AXPBU+3a0pkO5H0zfSK+Ru9llIsQpz+saHH8zZkOSgw0botown+pZUiDixw4JafBWm4m0yCAo5DlcyVmkfPVmOxyomUMjcvaVcCRGNHJGJvfJELOhvDTCtnGg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4A2EOVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4A2EOVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754413793;
	bh=7K0dWesHU8rlrMMDiJJ7/CJhB1NRatfLTLMrP+dSG3k=;
	h=To:Subject:From:Date:From;
	b=l4A2EOVUhHC305s1ajtzW1/IjtUVaF56pKUkDPPCAKV8nw8UyOMuWwF2QHGjXtURc
	 gPJxw5Cs1f8DWS2MWIgxE5XtjehijVDNjclQc7SKKRPLgFDUsi4Y8QxzqGYXB71nmv
	 Z4ldlJIvL2Xzm+HlgBAaqSU9E5L1m95LCth5DX0HoRzsMVoeFL18XzPsUmFpZpi2/y
	 MRjG6yC2knEimP8xTM62w5qrbFOOGk1BSQmSM3k1+pNhWos/UoKCl9j6cRDohHncT8
	 y8qn2/k8+GaBiNJNPS7bMcz00tiRUzuJY87GDezeE0qWOM4jmuhJ7n2y5TWsfUdbFN
	 7JOYJnEfBcveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACEC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441379358.18422.4416575237293665023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc0b434538d587348e16287f5a0f84a43cf61bd06e1dd09e36b87a88554b80b
Date: Tue, 05 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754413793
