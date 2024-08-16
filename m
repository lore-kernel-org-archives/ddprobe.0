Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A61CFA9
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723799754; cv=none; b=UFqR5+V0ExFLo7c5sWR61jBesMC8deESb9KmnPUqXAFNtUC5HkGrLDzrjfKkhhoBxdAKvRqq2n4zJp1JNnX5xJ+3rjw8IeiW2kWRYHboCTzjPydl+0+8fspI3vi4G+hlF0nc45P1i4sNPbwQVJA/JGc5PjPjXlsMGfZrvuzFzgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723799754; c=relaxed/simple;
	bh=PpnthiN6j9TQaFA9QQkXRMTlqEHBK1XGKqt1Kp4jNus=;
	h=To:Subject:From:Message-Id:Date; b=NP2LKFFcnaqNVH6ZuJOqeT5ynkd3+5T50VXUC0n6Qo/r41VGj89Bvo4mj2OnPmcLIPitqL2JjFhZGYvfjozHBcRdUOoGw5nVN5sITZtPuBqKk/rA/NXS6SKLFIunjsWlKlQLr8GtMhCcJ0vfVDUaxGia3ygKE/odslYL/RdQftE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuY0yqdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuY0yqdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE584C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723799753;
	bh=PpnthiN6j9TQaFA9QQkXRMTlqEHBK1XGKqt1Kp4jNus=;
	h=To:Subject:From:Date:From;
	b=PuY0yqdLn51xwoGiNqMUR5PYe6Z7/Qs5dTB0HyM52B6yfLDlaTnsB5oX/q+tAIb0Y
	 Vr7nePyEVHALBWKHHZFQDAQmgW7ZyPKvpJZVWk22bbRimcKlOkXLGbzlSZgJste0Q+
	 WwvEPhVZXCVSTfMY5EVjemj3EFMoLm9ARu4jN/NoBgOoY5WhIgoWX8ngLzBYlT9Q+F
	 XblL+daASrgCp4FNIEEmaNvkG2p1MI6QluA8JZDfOUQGE/1hCNQRLPrLzTU5JIMivk
	 rCTtG4VFnGDBUG1aUGR11YzDB7b/p8MTeWqep3oyHiTsICjWbBFTjrLwtbwvyIstlt
	 Mj7vT3Ncuv5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7069C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172379975367.32342.4544952760264251207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c7bef249595767cdbce329cfb42691f7670689479946fe20287582754d09c8
Date: Fri, 16 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723799753
