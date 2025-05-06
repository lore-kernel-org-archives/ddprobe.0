Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857C221D93
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746531594; cv=none; b=nGYP822oUjULKWWGKHA39XPvNcn2fZg/fmabcfm2vUQUh4dfqrEaVBoHMiRXj5ynojnP0fbzJNMVQ4jCIcJbco9VMUR9w6yI8JIyDXWhoHIORIbXqUCuzHFBbJNeua/vxqXgRO2hwLeABJFfAZgWZEkNX+s44adMWEOTu9/oXoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746531594; c=relaxed/simple;
	bh=aqT7LoQn1YJ9RFxgriLZKQBkYlRBe1tJXuDMKZ+Nm18=;
	h=To:Subject:From:Message-Id:Date; b=HSMOpEjeqRFS2l/qfAaTNsEuYg8wQYwZpkOyO8TmmlM7yQlQN/fFlWl8z76i6TUNyB9fp0W5vb7B77SNb5OYp43G4qwlL3/BbK60d9c6ZTDQhr4qlN7xwXoo7v1N6JsvvLb5wxb2twbII3/H9zuTfWRn8pCnqkBuqSygdfwANFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eygd1dVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eygd1dVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA27C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746531593;
	bh=aqT7LoQn1YJ9RFxgriLZKQBkYlRBe1tJXuDMKZ+Nm18=;
	h=To:Subject:From:Date:From;
	b=Eygd1dVPvtBJDy4N3HFArRi6eQ7guWsIXYgmg+9GfbaN4JWfjj3zNgwADE6y/TZz3
	 zWa2fD8yQrMyUKzSV1Vh82vWj0rjsu2wsUaxmqnwQBSdLUVVaca7SLrVSvroXvvhku
	 dTbDoGxvuSIIsyEqo8Kn9Pxt88qAYA/CtsAKayjeOntDysQXqiJ6Mo/pigHAtMAQAD
	 Ei+q5qGl1A+cpKbTqdD31xVS2Ex/UkA41A0HmF1t8ne0lS/MAVfiiiigA9ZhzuMI6T
	 EzWt6hlAu5XgGlZRvfAnEfIZbgWdMOoDHW55CQJUqxktaiMtb7WkqPTtAfhH0ghPle
	 VBnEK8yBmkltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB9EC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653159357.22542.16275002924727406771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f77504f6c94d078617665d0f325446d849b4cbf4d760e0b001dadfb61bf3524
Date: Tue, 06 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746531593
