Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B31367
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747503594; cv=none; b=iuRjWdZGP4yMZI8I8Q5FL/6rS6lMlm4rYfzhb0Coxps0uevWFclM3wmDbwm9Uz4WatB1LtEIeQ5xar126Vg9ozZ6d2N4iISiaatW/V29p9lzZ2EY6JHuB2lBvp2wKboeDUlXaVpSOscw70Mwlg542xOoLcJX2baf2eHjwa8e0bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747503594; c=relaxed/simple;
	bh=RgvVw2FtUUpCnDJ3A+qybdCPljrgA9RLd9OwbgaJ74I=;
	h=To:Subject:From:Message-Id:Date; b=kZn5PbQLwIbLXPQ7bB3EafIjnnKLRAnM/4R9vRPIA1Cd0HmjWBRVP43rnnWeVN+YyeCP0eSn7uGvfVq/tM1LqJb8iHmg1/FDUcCvj9iBRH+nmhr2VruCtkcVwyBqrZUn/+STTUoYEnPPg4YngBARqSZmIvBsUGVcOkbFdADaYY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tn1lHxRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tn1lHxRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F0C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747503593;
	bh=RgvVw2FtUUpCnDJ3A+qybdCPljrgA9RLd9OwbgaJ74I=;
	h=To:Subject:From:Date:From;
	b=tn1lHxRmPQ51ZlweGcr7n5MMBbWRT+Kdu1Y/4fGFm94kFc6L2wnACRKHt+oU4sLp+
	 VbX7AsZyuOI1qlp/PXIYcpnd3UV7ctt+Uz6pcKPZ2zUz0DYoJ+vdWqkanUDgbCOXJd
	 QioV70jJxNjeNKI8I4M+jpvnEb0LH/8jtcv9ZLQZTM9QT1S1MmQjv7LDh2mm3p+mZy
	 hxZPDbeKVgYoI3LpqybnSxLDnUK/HZHY3IUZpNL7p0Kqt7TfAXc1mkUYQnlYB2MK6V
	 4/+yTkTb9zDY4FvWwVIST6a99baRm+0ntNFWvJxun1VDubBvPHh1bODS5drHuSEi89
	 myeD+eOzU/IKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94317C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750359357.12087.5645676669016992389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1989df731317335e717046a7a89deb921399dc33df708db47e0fa0b6ecc9be
Date: Sat, 17 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747503593
