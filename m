Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0E5524F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784836834; cv=none; b=GLF+SQxcZliaz50QGwM8OctIUCZOv/Qq1A7tII5KmNWr0DbaxJsrYGt92HxqcI8j/XcxLA+H6T1e8ofA/CGww/eYPcYGhtWkXSTm+5MxHpq9Ll6QO4a2HkAAmMVJ0GdumMhi642mnku1zM6LKhOmQkAA29KFEuZEGzPsxwyjhSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784836834; c=relaxed/simple;
	bh=4iQEvK9dENamX9exV/Qk6RSf3qKe971jE1aw14Tzc0w=;
	h=To:Subject:From:Message-Id:Date; b=W3vNXlmZNMV9aWC9nW2ntB5aJl5M4qnKB2EnMiL9dQe3OHytJXbH5RGT/+TPDcYuHrhSfkC+Z2MxZYMEBBJCJ7fwi1Et2FY//U/EmRkCns+Vin3h370Qnl+TlLoSSjr9jnl9EZqZ43qF8OPEP+RgzQZloCG77rJmPLPsf0uE3Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPevQX7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPevQX7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D293DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784836833;
	bh=4iQEvK9dENamX9exV/Qk6RSf3qKe971jE1aw14Tzc0w=;
	h=To:Subject:From:Date:From;
	b=YPevQX7IGQKcoACkS1URGKIYSJZMfN5H8kIJVK5ORztz1wCppj8J6HatyvekpoGKb
	 zcPC/DKFxkrPO7KKWYIU8aFtBF150ZxFXaobmZYAnkRqtPVyJFW0T8WONYIuUxUq8k
	 sIBZokT392D8bwJd2nA4LaTBS711/RTSv4d26LBDAK4cc1O4CyQjQS2J/94jS4KQF5
	 QnVSvqt148nDn5PBhjZ6rmsZmfLpp4wFOkBPCPuAc1Ts2FV3i1KeWmFnSHEufCtZyX
	 8eI2SCKZ9XQQrJf4G7q+7zBs4Oss6SkjJdlKrZ47QWUUTJJX7PonCu9iI57HPC2cgf
	 FYSvyen/NpFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA75C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483683368.931.1640741363148043199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2652c14b8695ea8ee307af8b35cf20b4d668114c4a7edf4fd4038482089acf0
Date: Thu, 23 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784836833
