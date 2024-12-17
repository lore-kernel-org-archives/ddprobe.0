Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962C50276
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734458754; cv=none; b=TVeStiinmOl5Nyx8MJUkNhK+4hr2VRHc7RfMxPdr15uAtfhrjrcxz+ze9AMKl93jtbP/lWBCvu03SM8fj4MFNKRnJ7h9wNiiPQc/ZjYxXKogHfNcfnYS/KOEGgiihzwdLlUiDSwQkKU1JxlGR264viIw/83WXRxqvuKEbsPF3uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734458754; c=relaxed/simple;
	bh=rKeCRrbwgDi21b3ZDpWjmbTiYqK/bt+1Ds+IGcq0EC4=;
	h=To:Subject:From:Message-Id:Date; b=YslhLBpc6yT1jJ3RAH2J5Iqt2JFW0MnDn48iqNDhHF9cpkjvqQqTH19u8XV6vGoubiW/MnEJvIJNPM48P697z7oDMHrfr3rAlcB9YdLEW3djI1xCaXUBjhRQpEwhU1/zNG7d7UAbn5/r2q61s2mld3uOX743/i4eCOHBfY88+eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Q5RybO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Q5RybO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734458753;
	bh=rKeCRrbwgDi21b3ZDpWjmbTiYqK/bt+1Ds+IGcq0EC4=;
	h=To:Subject:From:Date:From;
	b=U0Q5RybO+DIj2eiVaMEehOyw0zRdKQu1NiBOhl+IuWtPfTHZvRsmWluOJHEKNOVHa
	 9O6RYi9hY/NoXzyeOpwl17XESo98IYR1hbrz30O/OiQjnffLDbPH0ejSEQ2X7eecKd
	 +duU8SRreMa0EX/sDhHvvu6HE2THyDwxUQzGjQmOQUizWrTz/M8GUutpf0mXvA4/qH
	 bBrHiquTZD3S5Wx99Pe+nYg7CQtQCaG5CGZygntJbbQBEsSFV4ihUxVhTvnESVpsyr
	 V12uP3DMohWdgkEz8RgqXXTSvDKFtUoH+C/CnxQrOUNr0UwG3pzxiCjILDrr2aTIRf
	 dMPvxjjGh9BIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D82E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445875361.7184.13881414943798909741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639a7d5e92aa6f24d3c6b404315651cfe81420b27e78d7dc4725f990d3ca4bf8
Date: Tue, 17 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734458753
