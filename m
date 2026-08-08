Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C013438BC
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786203634; cv=none; b=t5CwhQQM190JCNg6DMjc4K8R+yD2zmxy+kYmI2lmk3iw4RvvBmyBNb6Md3g9YN6T5mtw76LuMddkXooHzU45Eq//uG7W94bzF+9c1IyJ7j6xR/CsEUUKisS2AGnSmgn5SoMSa5QoNKXlW64OeoH0g60+L3mquel82te9R0p6HQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786203634; c=relaxed/simple;
	bh=2ljxxGjmzw0gkWKc27yxRbqGZmqmP4Ik0Jc7YQt2998=;
	h=To:Subject:From:Message-Id:Date; b=O+7II7Ki58e46qFud7lgM+MWAz/NkXJucXdyv3zb66DnTDVYJm1IesZqRyE7oQFllpM2je+vVf2vPdUgJCSev2bLXxIgQ7Xqc7HNUM45ccDrKBfXRxkQO9jgUPjJ1ewtd3vI4qz40XfjYCti1mNky3qzSOFF7Vew+LhTTqWnW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB9pKXfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB9pKXfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5866C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786203633;
	bh=2ljxxGjmzw0gkWKc27yxRbqGZmqmP4Ik0Jc7YQt2998=;
	h=To:Subject:From:Date:From;
	b=rB9pKXfsdq4qFF0YPy33mnR7FUQcLEr5MUQOSAhNBui2BoDnf7KNb4Mb80WiNiJsU
	 QYBDiAnkw45o7jvYhf3dJrmjSF2q9YRYlpk42wXYRoU8PPribW/NKAx0HoKPRBnpdN
	 Df81Vw3t1392eBH2tzonIrcaax/tPjv0y3X3Y/2y+BOVIMSNxppIXDmuYQsCDwG2zl
	 7LZo/Myq7435o27kNIH+SuXp4E3Ib/RkW00WzvFlXDfY21l3xT3i4BG+/UUNc8Mqgq
	 7M+RdrQA/lxgcUkIivpbt2JSMGrvasJMHKO42t+kQ0slG+JCEgZZAwfNHNWpq6NXHq
	 JcXqK/FgXHAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83F8C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620363372.2231.10933230514630492198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ce536792ae9c2c9b7411ea943d20e640bd1c04461fbad7b941900d3b681154
Date: Sat, 08 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786203633
