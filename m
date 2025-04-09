Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915F158DAC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744175994; cv=none; b=HBi6XK8A018Kgf1mq59X2cgC4gT2gfqrBJEixGTnJwhPGUICekXt990aJnJTvjf9Chs6+qGQt64208N+/tDgfw1cJMv3EEe6NFAmIugChAVxeA6VH7efoPMIjNHKQu2SKz3ZYHvr8D5YR3Td862xYbTROxgNytkWLw8LIWiyRQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744175994; c=relaxed/simple;
	bh=KbKPqw7/Zo2B7JNOr5mJkZ4263WZCMtQqBqHP/bVC+U=;
	h=To:Subject:From:Message-Id:Date; b=okeu15teKs//o90u+lYE6+dmq4LwPro5zZkoSo0FIhTpwlMpPQJI4TcPyEgCJ1mO87goEpgCNL9ehTeYg+EqnO41QDWgFt+3kL5k0XKUglJzxsVcakkr5sIKX7Y/R8YWOgqfUINvAokn1VzdgoAlGq+4q8npDoPp2sRYuRE89+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEkWVJJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEkWVJJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECD9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744175993;
	bh=KbKPqw7/Zo2B7JNOr5mJkZ4263WZCMtQqBqHP/bVC+U=;
	h=To:Subject:From:Date:From;
	b=GEkWVJJ5c3ftW+Bo8SWxrkU0d76K948RmA5ZXYD39nG6a/yJ+MumtUAyNhTLwBcS/
	 d5gAO0jLRjO7rt6CzIbiY3Lj5YEbO26zC98L68c9d12GoWTTHK8rV//0ld9RGKlJlR
	 O9B0UiHz5yqPii/sajH0HvxhuR5h0tb8NEd9TTd18M/mewlEUNVq0WVyOSg32WGsQK
	 yyqdB2E/1Ycm3n5V4zVaqWgFLfnYbuzNDOO7ZBchB0/JL9pAywQ6pca8Aa9YwbIvUn
	 71v1OX5Llt1IPlGEczKPm/9XnvkYROEI7ATt2qx5Gl3M+RHjHFwN7eYsu7vg98oCtI
	 jtofYOzd0G+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43FC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417599361.4390.5442584905501395966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77912e543ff718abe96473029b35dff7a492e689e87b49b0896d494a8781cc9
Date: Wed, 09 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744175993
