Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EC52D540D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749596993; cv=none; b=Vu9y85VSBY3BimjK/5fEemA5Vm4CCSRnCz5dCL8A07YR7NK4bJ7SPFvZdUALmzuxUQxSP1zESJh4xKRiBowJdiXgbxrPU0m7FXa3H3b/KKc+AX4HTRR6ypNm3vZ/oj3ht0pjXNrcXCrXSxHVmJwNuut8Eb0GwBRiqMo9Koy/F1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749596993; c=relaxed/simple;
	bh=7/BkpJeq3PkxiKL4UpatbVV7I8OlRPKLDiTitK7Lang=;
	h=To:Subject:From:Message-Id:Date; b=PzYV/jYjoYhm3eXsfhg3Q75SLhl6AXg0q9ByLVtfjjzaa0cZZ3XYLS+bKds8y4nePsjStESK73nSm96w8FsUE8wzjwWvcsuH/Y7kpLlGggzg+5+o92nD5+EYCDWLGWhYaw3UU7lq9K+A4fFEWD79crSgq7Hw3Ya+TysqWZhDDc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBpcbqyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBpcbqyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5995C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749596993;
	bh=7/BkpJeq3PkxiKL4UpatbVV7I8OlRPKLDiTitK7Lang=;
	h=To:Subject:From:Date:From;
	b=iBpcbqyBmY4MyugwHFjiaSNx4gicy5nDONhfYA1ACWamcEfu5xwjISzrZc9QOBv3G
	 Sx/cBiFoLkud19CBplm0OmwAyKu+tCyqxuq5hMCS1eR4lKFYBBtDLVwGQRvsOb3eSp
	 Ib/LJPE88Dqo89IGVeKf52BsKF7NhXduYrcet5Pji16HdQ/pVGmmuokdn5GeBWJ1Vn
	 M9PzYgvMwVENfIGBNsdqJRlSmuR+ioD9sCi8wHhjByo4uvBYq72pFybMdog3G5oGDT
	 1oKo1LkaA25QQ+9siBlsCwWkof5lCSZf5Zc7BYKWBvv3Y2ps2JP+UEfs9O71V7ti3V
	 zsyfqS1QIA8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ACC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959699359.19167.12139792490384472767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10811ae0f6e7d26c8891c042f016c250c227bf174fed4b354d2f0abb15de9b5
Date: Tue, 10 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749596993
