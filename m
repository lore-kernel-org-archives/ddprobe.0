Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAAB238C1E
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747396794; cv=none; b=f1zNkaSliIvFGAEHbxrlYN1WUuIxFEASiCJfbtsGe1T7tVhRoOZU2L+HsBUUt+qpdGY5Jj+6OQ3PcA6AYN24P/3owkiPDHqk6XjV7h/quWQTuD3/0CsyZYMkQ5jOkryItUEi7SwTNooVTWpDkdhh5EKbkZedviQxc+GQYeJVdYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747396794; c=relaxed/simple;
	bh=wrTPBNwu4L/iQqzRLats7VC808NTOly1uV4c9Jv+orI=;
	h=To:Subject:From:Message-Id:Date; b=tCFPcqwHEbd87gXXJPjVoKhulaJCvQX1MamXd8sUj8Kz6kQaMaGCNMGiHDZRaEwrpaFXnUtXAm9k+s2yZoGf9JQwXnNOPdqaOW076HuISfU1sXZO/bGgUIFOWzdcW8L0v59/zzVE4+n91YEM+jmLc0IaPNpm+Mye+KbSP/FJLeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1uwNyl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1uwNyl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747396793;
	bh=wrTPBNwu4L/iQqzRLats7VC808NTOly1uV4c9Jv+orI=;
	h=To:Subject:From:Date:From;
	b=r1uwNyl/egHpLqX9Ex/F3CatZWA2Ad8zsHClqr1bOz5I8bPa6ahy1CthyB/p1e1Qh
	 to15R9IDQF6RHk6Wfv4n3D4snxwXxb7feLIwKwn1HOB7TmnSjXBOaIAxgd40qhIe95
	 auAmfOmhAaETDPIOdl9qD3NijY3dURj41Lf1/by5p7oP8+1I6K0e6ylBl3LrJqVwOe
	 crEoozyfTUF4lM/6s/tLaZuFqtvVJLgyf/sb3np4oamldhkt0F+mx0q2GkzFdQUjsD
	 gWZGSWWP9ITcRPKvj8s9v4bWzaxjv+0VENrZtkDNcEQTm+dyQLy1KHoQWUx55k9Gdr
	 RqhloHKUKU/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1EC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739679357.6138.10074494175443308787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb8359d909bdce626adf946e270abb1c4dd9da4aebfd3e7be056e7a42b45749
Date: Fri, 16 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747396793
