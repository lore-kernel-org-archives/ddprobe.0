Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA23D27E04F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753204793; cv=none; b=WzkecdUcVO6eGnxzo7a69YjCRHSKyOVhXXnQRZr0HRL/YXByin7sExd79kXu+PdLrd2UBgnRtNUcRRN5t8sLLY52/6Vt1SBX7oksH93Cmwb5AqMgtdRhPncCfNJZG+RBifa/ky56YN4KQ4cDxQzTNxeKzOw0Mta1uN3+imR1zl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753204793; c=relaxed/simple;
	bh=RIs/q7tsspxXBggqw2G7fWDGA1Jq88BKFlj+JL/DVsU=;
	h=To:Subject:From:Message-Id:Date; b=F0AP6Ceu52yAiId6WOpFN7DylvfZTrtHlsVvc4iMVGk2zLkhPIjIH71CcHq7l+tGg3h3aocVvDveDuXd5qbap8jg1EENdPSlqZMOwThBxPHgD1FLLLlF5nAhLn0Z80lFnCWpfGdj8jGr36SMN8MecfPiuskaLIq4m/V2KxS2XyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaJYMJ/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaJYMJ/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F61C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753204793;
	bh=RIs/q7tsspxXBggqw2G7fWDGA1Jq88BKFlj+JL/DVsU=;
	h=To:Subject:From:Date:From;
	b=QaJYMJ/rA7i5HgaReCOPEMhVoB+LSQK9beUyzNIyJNdNguwZlumK36f1MNPhD0/de
	 MEPoZrt1WQRTeNsmiobnDwep0h/Q2OHrEAodUtN0NlCcZAyqQ8R9l2Q/D3fxG2oaEA
	 akkV0oFjADk4AOhwqoiKUN+i+5zFVt2mX/jqwrJIQQkuvW011CGy6aq67H196n2y3J
	 uaBUmH1UgKOaLySTtBw93Zo/RfYdi/10vLb9ko4mNE5f2qm5RKhxeCzq/2vdTHsUQb
	 v1Q3Umw6Gp0RAQC7GuGxz40vR2nDkWJj5l+2Fh113/RJeGDbr0KzwqVtO7JnNt8Tuz
	 BxDtPIIjMhW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FAC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320479358.4319.5152232383887137460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f2cf53671ec4a2dbd732370408cc364ef6a23e3569dbf1831d032bea507de4
Date: Tue, 22 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753204793
