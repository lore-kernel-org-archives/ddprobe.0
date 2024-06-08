Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C73B4C66
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717874843; cv=none; b=RlRyv9nBJxpsb5K4/0XhqVB0gvp3TZ77dfLE9ptzaQX3QXa+Wfu5JWnh3OowpqEOAxLfFgKqNhFJ50K2ZnHopkQP2uW2p9+lu/krtXvzB4ViYPsTnpb48OU3Dehi5MluKVI5uNZhFJqMY/+e1px3irL2V0r3HPMKQP/6jvXqHYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717874843; c=relaxed/simple;
	bh=eK2alLXpfED2nK6ZX17ZNAtDrXQQJRndV4/w7JGUWjU=;
	h=To:Subject:From:Message-Id:Date; b=ShO+UKjH5nLgZqwxUGgBlBvXEzXk2u2bjzklsSqj24fXpp3hknigkIIiziiXZrG3Iv5DZkVMqdXJ7FPjL3iQSPUvMqM+LjOeUnCbjrgvqNzTobARs4ivfrOA5FJzCpbl7kEulejmi0F0HjizSCM9DxjCInbOUhAFjS3YeZGmi9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcccLpze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcccLpze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC82C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717874842;
	bh=eK2alLXpfED2nK6ZX17ZNAtDrXQQJRndV4/w7JGUWjU=;
	h=To:Subject:From:Date:From;
	b=WcccLpzekTRHU1HX86I1E8fRz4XFyqgrP49CzFcY7h0YqH9OJi07gVFhxKZjj9Jr7
	 r9YJf6JaWMK3mHVm1Y0ZKp4rcfm5RHCP5QTyLFsLYMoKnJK5cdYjpmNeYQ3UmjOyZn
	 eMXqLfXgiEFMm7ch7uhsiLuFEoLfxP2FKjKbaeMi6adIweTClecPsOy7xSF2iBjpz6
	 bOV3f5mSXwx9Y1lQZiUleHbkY3yjMcR742yLJyN8hRWSqAhXTbJw+fCBYODU5g/aJF
	 yV2h4dn2Sx79GZH09dI3po+r7UOjWk/hzUNCgUkxV04Nw/TCHzave4exkOCytGtpez
	 NcY+KxDfWTKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5738C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787484279.5308.1628876788893680948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346450d66ad038c1a4eaabeba809264ffa5a44ad6bc3f1c03a4e4b3b7b544b5c
Date: Sat, 08 Jun 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717874842
