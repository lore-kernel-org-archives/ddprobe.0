Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDDA5258
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749689394; cv=none; b=N4ImlDLFAc2VvR7hZILuH+sobHMzDzzh6inXKyRIP/ABQcZKzSMzF1xKWlENGdwJELqjtifjaHesfk+5979354UdJn6CeVvBGdL4nawtfPJtrb2MBdkrylVIOHbhmHjOwcXwZWO1tHD1zLXVwB32BDw5z+nyvyycWomc4y6rx1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749689394; c=relaxed/simple;
	bh=B9hQU/MkcrfvgP6ej8E/qFa0jlR5vTYB6F/Y4MnMTBs=;
	h=To:Subject:From:Message-Id:Date; b=DSWrz4Y2myjDCAR2ZVqzaw9T5eWzLua+iMHkDz1H4EUhYah2/5VCalW3T8u3ygkQyVKbeE9XGo9/iIHo7iL+7hmMqdYO9Bb7C8qurfNuCN6m+eC275+JqrPhyl+dgEyhSuVvCwwk7Owkpn8sH/U3U+MidxFkh9HkVuPDXxqFjaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bW42HNhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bW42HNhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC60C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749689393;
	bh=B9hQU/MkcrfvgP6ej8E/qFa0jlR5vTYB6F/Y4MnMTBs=;
	h=To:Subject:From:Date:From;
	b=bW42HNhE3vAokYAaOyprVijMHWBHQYm7FK4kfpegENuMmJYWWntgH6EPL+ubc0HwO
	 HayfpFnr+ZNIXt6cYozr6GCPxywXNJOuMn7AJMye/7lApEtQE5+VGVWrSy+/J71e1L
	 cL7xromjFt/8wZMHqE3ygBuxuF/D6CUfK0FjcNJbW5WLyPqm/2Bwz2NXVm0bSLV2oG
	 Apkhq6oIu7Or6TWb0wDKM6fKsFypWFvdGbKMQEJFTJpNCp23nO/y6Fl4OzaCLvELKu
	 qwLEHvHRlcxripXRGKhxwemHrJ9ZmNEc7+9ZtKpKGEP4FQ4Jipk4SUf2//OxPn+qMh
	 1L4e0o2NTc+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDAC71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968939361.2795.2954994344101905965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1ef51b002a7158543fdc97c51d55764b5344446969ca681eb2f1405e477299
Date: Thu, 12 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749689393
