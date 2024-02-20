Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E477D1DFCE
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708391897; cv=none; b=IC8/mji1Sl2oILsBhHSppTeMpEfdz1j42rOb7Hh0qjw1V6LzLzQ0W36nIiLsTUVI3XMOnZIgpuXeGvjoJ6f+97+Qn3dqRpR7sv2XutJo3BHPs/FBjmgtspM5PE8ZUUx+gPDzbCa4meDH/TiWfXdGmHNoHz5XPflXQ84I1FgN/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708391897; c=relaxed/simple;
	bh=M/z/P4jDzHEskcBSYfu3py65wyiGvuAlNe3vj03Eq4M=;
	h=To:Subject:From:Message-Id:Date; b=iU+XuvwqhJib3K70UiLE+fMM9Yb2zMaPPQBr5eVRXw2I70/JaIcsG15GnhZGev1Sl+ft5vc7DZNbyr3A2m6EEEhgo6l1RxJKb+2HHWQsMzvORNmtk/MUE8HD7KoTqAqqf8TkaV1J5GwxiheJguDqQkxEi5rCAsiy2FMs4CqyPDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqv8fLuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqv8fLuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEFBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708391896;
	bh=M/z/P4jDzHEskcBSYfu3py65wyiGvuAlNe3vj03Eq4M=;
	h=To:Subject:From:Date:From;
	b=Pqv8fLuR802w6QyX57C/TL9wEasHJQPss9Q3VCSH2Iw2ZR8TOTNlHXlqlFk4+rCAA
	 71WX0SjwH9zZypZBFd1UN0JBg1bERgpg/u1wuLu0/YnSS2fLhBWSBUGsNRR2f3dcQ3
	 xnBAoX5982a6JSF9d3Gy1aAwte1nkPcu0oMlWFGzrcd6LACt/26UnVq2O6fy8PYQ/g
	 eBFu0Tde8qEqcDzvHMLCdkY3jdOua98AjtI4KXM7RDeiJJSKWgM2yzSgRlx4Ub+e8p
	 BtS7PNZRv+CMlaPtSrrnSfBbiERzsCr0Nh/aivcQwm5yGOiToA3GP3VR04Mv+bK0V6
	 63GqLMdL1kIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6CEC48BF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839189638.18148.7935463542268968076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b2963a26fe4eb035bab9e870d092790f0087fc31e33d327356c8bffa19ef80
Date: Tue, 20 Feb 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708391896
