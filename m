Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959F833939B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784716714; cv=none; b=LYbRZXasHghbr77zgTlKFE8LKxv92HtJj2vVoJGbYexgptEqmGoDbc6ZiS1ceqeqXXtils2zFztXMSpQs7VsYu5v4HC9rBEHE/pZ1d+juoTDap+f+o2jX2S5cnKytriyIHkyKh1t6oiOZT6T8wVzB1wG48lp7mNWWqxNlc1PJRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784716714; c=relaxed/simple;
	bh=W2rrS0bHbfkmrmGmqWVPw0rQWIkDcmrp8SWXw+WHIQs=;
	h=To:Subject:From:Message-Id:Date; b=EMGamnkJcRK49Yb+b+EG8apcOO91incTkPC/70xPGofk0HmDyZlP2RDoONGA+IO3gEj0cSOvyo77lCtRzOrsyFIeLpR9Q0/RXjCk3i+bTjPGmQlgt2ZnDs2A/o9Dw4b6ZO56lxPZpSk6P2DfMaFAgnGZs9EfkGwZErDqFCfjVck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG5VWTnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG5VWTnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 207B2C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784716714;
	bh=W2rrS0bHbfkmrmGmqWVPw0rQWIkDcmrp8SWXw+WHIQs=;
	h=To:Subject:From:Date:From;
	b=OG5VWTnNIEUQAToD0UOkiVKHG3F6t4aGJOslQS9ip82ZIz5KzZOZgkLTyLwLBzyCV
	 fo5yL5v/TX65j+iMANClNLhO/Bpv0ZkHlEggI/qAIUH68nI7s8Zgh0NkpeBxVhblVz
	 JZ+6c4AwBt2Z2WV10f82tEzVjuzZuSHXRupb+bHxz4KH0RFTiSxXfUr3nOcDJSljkl
	 gLcTbAvg8AOL978RrIantb8MFsZu6sPeTsaPRN+CXLVY8gi++K8+4vIGuaGhSQIwjj
	 sTu4n8UsyABSq/ZVlVdSAHV1eQ+7Uz+ISJYjMJCvrm6YwYfLHqrgSdz6KSNqr2y74s
	 gm5nEbDs5B4zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15BCC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471671382.28429.14126256260413642287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9021975c39ef4ad540883cec5d97739b8ff999907908113aa5ee3a2c5199e4ec
Date: Wed, 22 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784716713
