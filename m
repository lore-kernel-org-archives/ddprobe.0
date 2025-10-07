Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AD2E973D
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759862394; cv=none; b=VZ7Cb72oXpqx/xG9Ma37YFZWSLDXlszQyRRpdDcYY6ZZjJWNMblEXgaDtU9b2rmHt8MIK2oWwVn+ej+/AdRIP9/UiYD+j/NhTaRj7uTVAawI1Vfin9D+e4slToHqpdP4ODMrR7mOkb7rphBReKM42rzdfwYzykyOn3ODCGtG6+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759862394; c=relaxed/simple;
	bh=hsdWuXs5m05Yu2THl86RxzRXF255jcts7K5nLdK7b5o=;
	h=To:Subject:From:Message-Id:Date; b=LpyCpnQYig4GQo5hH6F90oXLrDvP/EP+GpSo8CUmqOT+SO2DZgj9LmGziyoC6PjKQ4yfsjdT3xtmppWRjba4Ba7ZSCJUjoJRGUo/J58IIw8Odkqg+j/gSmZC0v9TuNqYzYWOzrEFuR8W+G1+bc+IioH5P7HBrbyUddI1JO4M8qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgUKiDkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgUKiDkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E650C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759862393;
	bh=hsdWuXs5m05Yu2THl86RxzRXF255jcts7K5nLdK7b5o=;
	h=To:Subject:From:Date:From;
	b=sgUKiDkd7OluEXLmHy5DnKJR4owAVrW+z/sDt7nsrpXLUp4gI/Lk8uBVjenmY/IgK
	 gHfmH+kK6WY088kr1rwe1oU9sPJCW10ZPPePxLQJTeb+qEKIGvptj1kKHK/2Z7h//C
	 jP03NBFTdfwEN2Kl5Nvv8C+jNP4IKqWQqFyX5owolt6dPnJ0xFwXSEsho3qFVqSgrT
	 nbxi7k8wRUHjjtFP2Ar+shxdmCnyJzev7mBB9jAsiXRz9OC763EdAePZHcH456eyn6
	 i6trgQO1XgXOd37ccihJ1aH879gUUQ/+yK+mF+iigOrUffOgLNWWTmvIopi5rDZ6+m
	 HW9whkBZjrpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE87CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986239357.3320.14086952125503240773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4c5c3865f9b8fa7515f4e38ea8230a36a1dc22b2b3251735a403de79b7c537
Date: Tue, 07 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759862393
