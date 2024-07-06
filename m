Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E7C77102
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720268723; cv=none; b=EyResNYWZAzIObTkPb/CmsJWWrJucnSVSMXix9JM3g4e7p0TnF8JQYVLGUtcZPklPIvD0A4nCh4NjlfYFqz0meqWfCQaQ5Bj0yJ4iMKoFI0+H1tBsijaPb89BwkQNzRzjIroSimEWi9+XnQamDa0CxYLsLzvW9AQElDQKUmpKs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720268723; c=relaxed/simple;
	bh=qwY4EmSUf0NkiHv8jlFifFCfE/rGkSJzTXInkKh3fOE=;
	h=To:Subject:From:Message-Id:Date; b=In77BLIA6Kg6bpUXq3QRqNoLK+cah8IcEqccJJwO8rHPSmoC08WiltBv+/CXOVPAUgnHOn0uQmTcJ2ds4tKLk+P01oSsQ6RFRCl5h40fgD2njv3VippugBSL6214m2GEVWPt58vHWxKHq1LzpddeyYQgdSV8XtcvqJcEAgJ/tgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta28FYxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta28FYxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF33C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720268722;
	bh=qwY4EmSUf0NkiHv8jlFifFCfE/rGkSJzTXInkKh3fOE=;
	h=To:Subject:From:Date:From;
	b=Ta28FYxN4ZgZiHhmeQXhHyC5UGRIrJd2ytfs8aHQe6HMjZsPqfQ+RlUdPUEm+gCU/
	 riIQ+ME7cdlk/GCaOR9a/A9nan3Qc8X3ncx1cHL1Fch79l3fZ6TJA/TVqQKSgFGYU5
	 uMkHpId1DS/QkhOG1AleAlPDDcDGQ+honvNjYGIchXkpw/RJtHs65oZ0AzKQ1UI3bf
	 KasmFs5RbFH29AMSZJVi6DSiEMJM2081MNZiaHq/WzZ3g0WbdPfhfmA9ebjkQgYC5x
	 R78j7zUZ4Ga5F+DaAn5SXjUDlxCP4usfyylg8BdMI0f9Ku41A7xYPWVczdZpoK5nuu
	 fVv1uN/zxWUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D48C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026872278.8213.1347533940680520243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730b672106c12af5ae0ae54882d508294fce5fb62b63519bffb0c53316183be9
Date: Sat, 06 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720268722
