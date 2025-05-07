Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C501DE3DB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746650394; cv=none; b=kGmf7lbJsp7ze0cRAgZquA0BWZunk5lrCaR4YHloPGVas5S+G1L5rQ/kdqwJHx+jLHOz0UqLqt5Al3Nk9c6jlam7ZFOG4Dx9mQU3kfqOtUj0JinPj++g4411E72hMaDOUHQ1KBk88jIOLQHR7cfFO7F7khrHzgBGrMh518cXQMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746650394; c=relaxed/simple;
	bh=R2pniUKKrZLz3dUO278PLC5AYg2Q4XJRDoi/XNibGuM=;
	h=To:Subject:From:Message-Id:Date; b=lf/9nk/XN7JuLTvEMI46VYw3evsHKhBJiossm3uZ0vIZENWvTkdc2ml3oAtAm1nGAMU92jSxGh7P0D8+NuUsy43aY6914jw8G8GIbuxdcHGbDzSDTjMi6XiHCT50ERHqujMmVbiNwWcQKdIIMAl149Gu7jx7lWj6hnrHKCZ6omQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXjnp+HO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXjnp+HO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0033C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746650393;
	bh=R2pniUKKrZLz3dUO278PLC5AYg2Q4XJRDoi/XNibGuM=;
	h=To:Subject:From:Date:From;
	b=uXjnp+HOrZAfRrm6vAcDiiQXoYJVOuZpJUhsoK0cTayL7qEDhrUhjG9axcCzQp87t
	 0kB7dU/SnxUTc3xj5TaiGhb6I1evwRicvtDGNLRbwwfM4yOF1UODibNn/WUUxFmiGK
	 lxbuwVYPKLSx66gmqyQvhbEjUE80HAeU4dk5zucybYKLDWe+91UEkp8h5Ez6BLv8TB
	 HhkM2GZJjY5h9fli4OgqWldRrWn1+RYAWTz38AGwblOWV8iHyOf2g996eYWoBNje9g
	 8HjXpvRm+6t0MwQ7mtjZ9oonkASQFWgMU+V3gknd7mfW66UGyT01eis46X8lYqnEfV
	 Uv6Q+edP+mWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24AC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665039357.6448.15440862048574219641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ff1507529f0f0d337ce8e3c481d9a3ae8d9c6732583ceef45803fafed573fb
Date: Wed, 07 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746650393
