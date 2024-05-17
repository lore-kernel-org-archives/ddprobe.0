Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5592115E83
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715928743; cv=none; b=WR5Sgx9YmpN13fmGH3fR06yXKaW08dScvtpJvluy+0fXJz8uttJOmtugHkZIY0LYFWsM5aVrk0vNJE4qaGyo5ECK6tAQrv4uBnvp1nQSe3mgKpeQswMJGW1HICXmYQHhGTNI7F+eRkxrgcY/sQ2+n+VaVIu38xzJoQA4LhpfAjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715928743; c=relaxed/simple;
	bh=ipOFwJgNc7/WsnYWtmf7U4+4YtjAKC8UOoNhafSBZi8=;
	h=To:Subject:From:Message-Id:Date; b=XMYvzTJ0csot5Yc6RwTspk9acLitw9T2MVzGZLhF1XyuZ9Qe/HHvw9Ed/TDbzxogDHsfj7rIe811pqF5zCuiqSCB+W2RI4rRp3oFwccCp/cZU7x/HvjZwxUmhrTHcz0uLKMloEjC/g+97LA4LG45ZvvvvJIisN8bH+WQTylaJXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThDC6Jht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThDC6Jht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E4BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715928742;
	bh=ipOFwJgNc7/WsnYWtmf7U4+4YtjAKC8UOoNhafSBZi8=;
	h=To:Subject:From:Date:From;
	b=ThDC6JhtyRSfNz/9QXugEH65J83PAnZiVTjXolyMHVfDZ0Hmia0GSx0ULPVwiDNl/
	 2gzp90Aa4p20kJa5DXNP3zPHF0f4asAhbNmsc9N/wwkYEEWP3EWP58UKq37MHFxs+v
	 4ADq8LKaFUrO45dotRDvLUHJeyS1IKL4dVj8rCHOy5noXy/w3fP5Mz1V0IWezClKB3
	 6Ok/JVvT0rrfuLKS9J97cIuvYO6/kwWCb6yUDSsfhdq5Qw/xLgK+qm6IyZBaVBbDoO
	 UGSlMs2RMRyRv965jU5w3zjbB027DaMon/ImKPxJrPGdQ77Es122elxM1SwnMYoJN5
	 iBoGRDTrmfcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7CEC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592874276.8995.14399748424576340268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407c596e75b91af285df150f87e71cddeda9a980d11388a9949fe9519c3a022a
Date: Fri, 17 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715928742
