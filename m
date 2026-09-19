Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D11374E60
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789830034; cv=none; b=cswWNBBwYrx+9WeXtb/39WWxWwYgJ0XuOup+M38tj2+3epIpFvdZ6KoxbN2Df2R8RQTZOzMkdX5fdJDTGG//Q0sL8Qb/fVWDMHStV3eAkE6eO48bYt5oqDyAkBZpOkcfIBn0O364Tr31iD4RTeBILVrDBFJmVVI+GiFUewAcOHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789830034; c=relaxed/simple;
	bh=S8GB3fVTifDZOXkIE2N24ZDexg7Mwlq17YsdCMB00VA=;
	h=To:Subject:From:Message-Id:Date; b=QZK1VRdZPLVwPHMrJrV7/HCFMEsM3WvNKhcGGOE4n6DdaKwOjA399aBRE6oqVm1co++qV0t72emOjbheIPU5xdMaYXaxiT4Rl7bWpyjEeX0f3sxDSGdyo5sItRqBIaNv+KRXd/ul2gGfunL5I/cMnx7tnnw5c45Alar+6SPe+QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fes07KgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fes07KgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5737C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789830033;
	bh=S8GB3fVTifDZOXkIE2N24ZDexg7Mwlq17YsdCMB00VA=;
	h=To:Subject:From:Date:From;
	b=Fes07KgFNbDssnLAEC0Y9wYWpfGoMpiobqbL8bwWy8T8vE/QhSzvAEDxVn0CYQ0aW
	 T8IZqnwqIG9QbAvBTOgyjlQIp5NnQ9TmwgbVFt7T2PGol1LXEyMqn14Wthte89Hyey
	 2f6BnhxKxD2HcTfH5RjKg+/0ADivKKrvrAYWVSc2Th6LAAisoKz39ecNwyb7pxkrst
	 LwPpjIvXsHoCH0PDF4olOI2nuYw0r5vRqDgofIG8bkKhdTMo2lofNWUvqqU6wumtEx
	 K9+wW0XIyW83sATZHYhNxsIzCPBtauinGDDlQ4me81tMR3BS/dg5cyDs/foHsfK0zR
	 H/kKaskMdb4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFCC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983003368.22035.8600102507964913711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e489dfe1bc51f29834e7d3288a9aa873047d41da00a382ce3e9a8b8cde0355
Date: Sat, 19 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789830033
