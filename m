Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A9DC14A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775381734; cv=none; b=IjpDRa9fjAWezVx/FRf9qQ8kdFX5/hXhUN9m1DujIWq7v5/Cf7a6RmVoRZ0FYFmyOKwPa5FSdxUZp1Z+W7cYPPvcLqMmxCd9pPvfCqlmICaRDnnUMJvo07+fHlMXW8U26AXKSo7Fa3B+9iGjBVZrFS3H0axpJcvpdAWxPFKlsJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775381734; c=relaxed/simple;
	bh=f44KVhHVOgGKtet+00Xs2QXP/QUDwG3YA7KRgqG2JxY=;
	h=To:Subject:From:Message-Id:Date; b=pta6NVIzcdc3JLyymekhlwCg8vA8ZSrGAtOZI+Zaowz5AUxIMskb8b+i2yhwrzzxOB3ylYzkPb2pIDoFuvMjoYMoENgZZTYrUDJHZtXLpYD4AwUtySF+aDGINn1otbsyIxLrCdYZYvNciAxKfo/hZ7HCHlYe1I22OvIvafUTaWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNGmQ8p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNGmQ8p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AB9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775381733;
	bh=f44KVhHVOgGKtet+00Xs2QXP/QUDwG3YA7KRgqG2JxY=;
	h=To:Subject:From:Date:From;
	b=FNGmQ8p8S/zrstPqnGWUQBW8dva0obxVbB8SLR21GdfiX2IgSi8t63e2RhZ9emQyl
	 eWrY/x/KWtMWXf6YrVo6QZ3q93C5UXmPq/WwkgQdeVzr7TWA5IS5P2sZyfhSaKWusr
	 7PkH0txkQFLMmGvAmUfUyGetA9oP+6trUH0xpzXfDaUyK2LcSY7mc5maE1mJiQ96S8
	 kGjtmzR6+8802bibGQTFUbzVKw1rHx4SLGyv5GA/JhVgkKaW/gqQ3tybN39bwTIw6h
	 OrA3MqE4F4LT+9/3tuphdPACZAFCbqjAKOEjPyu1L68GT2HRCfOhsj8OEU/tdCjdtu
	 2HZChNzZi0LsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE76E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538173368.9812.4404958459710597634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c535e27eb8607a906116c6ff65149f0c931f532344119627e71261e1d0d47ee6
Date: Sun, 05 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775381733
