Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114101F191F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312554; cv=none; b=jLLB1Voz8VVCRreW0mB+xNQ8GjY9OxZXrBYYv0YuzblJ05qx0YSa6kS4VmkHnLQrEsVNs4R3jr13fjZKXZTnwYibr/+VWbY9pnfR2fXuoyX16th2FkXlT7/bcb+ofzkweZhQBa4fYgujuF/VMQpbhiIBHb7g3s8tg+dGNzTL+pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312554; c=relaxed/simple;
	bh=KKGWjqSiB+qwkZoM3+bMU2ZGONMUeiuE1GOYQxULns8=;
	h=To:Subject:From:Message-Id:Date; b=cPAzaXoMNXCKakDdCZgSA82aU+DCHGov6Y4uD2XpdeHq2USOB8mKkXC8DpwLwnT6rfEsdbMFLTUru+Iu7yi8W2Ze0Z+EbACffKmeBnkymyxSfpMK6uSj+YN9J3w0Kxva3u8TJmHE6/SLaqR2F7u1f/bhNrUWkQe70NN95F53n8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2xfGHQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2xfGHQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155BC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312553;
	bh=KKGWjqSiB+qwkZoM3+bMU2ZGONMUeiuE1GOYQxULns8=;
	h=To:Subject:From:Date:From;
	b=f2xfGHQB/OBXntp6sMNC0YGpaNI20xmrE0xD8IIKkpmRUOSBTxha7rB7BAe3bH0UE
	 17h/feJJ/fEJ80yBOP3l1otott+t6w7SfzYPk3HGanXPzgiYHxzGHlge1zC9NyPwMX
	 I/8B4kZ4VHaa+UsELdhk7GOJv7cfAU1q+SE0YJRLkrXst/wRU3fMHM49s/8z/L7V3U
	 D5xGUlWTPXOrx3Kr88miRmvjcc3MoF7sIKAgktTjYMb+wntAiLgVaEyXtOy4tmwjtX
	 TzCJmcNmfmClUcJRgcAI4l7eOKvlI8Ny6djSIV5RnL28PiiFY3ON5LjWkk44etEZRP
	 42ZZ7UL8zWgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91730E7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531255358.1495.14542118850114528695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878f9c3e2ef0f839645696d84cbc56afee256ef498bb4aa6ee919fd55d9bea30
Date: Fri, 27 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735312553
