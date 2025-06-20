Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9382AF07
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750416593; cv=none; b=qESnw3qV76wutIg+vv98Iw62azBn7+SOAGP6Mhjn8oEoUk/t9PJnggg1iZ+afsqQYBD+6ke59SI3jr4k5GcB+rgLHtD1tXJgLIMe9S9NDkiJR9W8IktrpHLZX/pqi0KhZMr8Dlj0gYTQhaFFgTdVcIsgQPdkmnVaP/z0pB190V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750416593; c=relaxed/simple;
	bh=uihvcLeQLhpJsTygs+XNs47010AOZ/HzMlm3yLaKlL8=;
	h=To:Subject:From:Message-Id:Date; b=lBtVomfUU/GRgDJhdTol2qpdzLLlHYn3hXs2nAE8+la6aHuAlzwGVBUVRyNgoeicVwRpCMphFvfC3hK0Q/IZHMRJCC1pAKnWDaD9iqv0rFZ9uMVlcJcm2WvlEciNs44rbcSN8i/r3BaXUbvXj11pOLDiHaM4JFywvP+r1n6L6ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nbt4EPL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nbt4EPL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4ACC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750416593;
	bh=uihvcLeQLhpJsTygs+XNs47010AOZ/HzMlm3yLaKlL8=;
	h=To:Subject:From:Date:From;
	b=Nbt4EPL7RMvPn3vqKZW5oAA39nYp5CmQPE1ubRmQyQ5+FeMSJbe5V0mtPTZcW8paJ
	 ThzWcvnDKPoDgltBr6uK68m3Xb30/tpQE9r8WQanJuworC5Gx6uPmQBa+Uww2rA31q
	 xdEpxcQTuKQW4kIT/sabLi+POv7xKMkAx/JxxPH+qKKZ+nyOn3lj0dlvmIV2C7voXX
	 Vq+3n8ouaqcKHcmxAr9XTc6ATJ7L78iYnJolP7XIgJm6tu5VyITH0wjK8ZIY6RVNP2
	 XbST8Owy9WrNtpAp9cVi9HyVWWzUqDpBLvp+ylUpqpeOeDncW5YCWmBopkqSCJ+0al
	 1dPTdFscKEjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6DC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041659357.17998.12327228780488174460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd31589469d334ef898424922ba621525bfb110d97c012255869f2b1db7a4dc
Date: Fri, 20 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750416593
