Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C881F5424
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742917794; cv=none; b=i8+ZyeCvCgnE/GoSEROm77ceXJ40KC1bD1VPLuQ7sZUhoc0YXuLm/azpNq/Q66mp1285L6Q87jLqljXon3XiiSH18dO/DgaWTd62BIfwX13PkJfeB6aK36kB+QDIV6oky/acaPBZuGw4APMCfP+tsj9UzQQFRqjonnZdYoKKX/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742917794; c=relaxed/simple;
	bh=Y0p2mskBTjp7q2CWPa/E34PDmKMi3K20CCuAT6vUU8Q=;
	h=To:Subject:From:Message-Id:Date; b=Oz1NhlpGrTm19QUDUQcNQJ2r2qzyXXf/gmR2eqnuuZG7ddyEatco3q5FiARrkWgMAbgBXACglBSpoicr1Jxtrj0uNBlhg+8gNl7jtAa3Ihn5Xv8G2luMvnO8OZwokN3/YNZs01+1daNrEa5wnDF78zasGiFU4ORPJqh1TCF6Rsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZuTGKKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZuTGKKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C24C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742917793;
	bh=Y0p2mskBTjp7q2CWPa/E34PDmKMi3K20CCuAT6vUU8Q=;
	h=To:Subject:From:Date:From;
	b=sZuTGKKTdf5FkBg1504haGHrYKaajP/cDlcjZJKbEcNTlz/esoFU8S5Ckw0+vFx91
	 fDaq5jwQnYuB6HvGquQxE0jy8YgvzZqI0WypOFQm0+rcDYovl0n5bAkYGxYQp0EKuH
	 4IxWBLMZzSWNTHCSNG122F0eQXpM9Qv9cSmpqsUwk1Gz0QQkl1rRg/Ky5Xk5oAS2Fs
	 TM8W6zf4bG5WQ0O0ZHK5R4LQ0OFXVhygpY47ZVIqH5gdgb2oXY6ftzBbRDVcDuHkDj
	 9b8TmA2bFGr4zxHQz7mSuiBY6V4QT0QnWYjYGbIH6X5qzB7MyU4qBvp50kz8xIxFQi
	 vJzRWKrSxogTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EB5C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291779365.23989.6373394452210422609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2724758e154a15b636aab719c888968486f97e99f4afaf671def7484455f5b6
Date: Tue, 25 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742917793
