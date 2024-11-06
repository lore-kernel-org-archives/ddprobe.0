Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A1413C67C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730910954; cv=none; b=GoiwiqSTn4wqozZNoHhCuSECsKQP2Lcehh3UW2fetyqfWuwIt4Xsv4R1rZ9FZqmzxiaUqwfJMrMr23j9HumxGaN0sTbMQlDBrlX4Jf58bIiqJp1ZMZdTPWepMpURjex3VCdQRi0IOHQxpwseGmt8K1QWsdaEN8bjdyS5hMN3jnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730910954; c=relaxed/simple;
	bh=eaOIvfOMcncZe+aMvJd73I74J5yfvQe/LaTOvKGhIYo=;
	h=To:Subject:From:Message-Id:Date; b=JMiM/jefxP8FZT+DFt3tTqJdl6gppt+kBzjdwvQ7vX3+mg4uxk4wzjMvw+DBVTE7aUr7lBZTzcdnN7IKHo5V8VSqod5k0yZoR0t9aSorhgVlHxZmpU3tz885fYhLHYtVm432ir8byi75k9Ahyu8TuFYkfoDAVq1qh2hszk7D8mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XADX/Qgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XADX/Qgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4E2C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730910953;
	bh=eaOIvfOMcncZe+aMvJd73I74J5yfvQe/LaTOvKGhIYo=;
	h=To:Subject:From:Date:From;
	b=XADX/Qgm/QH3cOtabpLKOaj2wPv+7HHvv94SavuPzNR9X4XE8uGR8PvvgIQGrnVwP
	 GU9sN2S1+0hBCwQ6oRjFA2Q7SvVJjo8lauc6/2RevpsR2wufCty70weYdEzJxZpL5m
	 S39uWYl0XPxjUwKfOuc4ya+A7xzoXPzNZHBNvc4uINpdwDzRUjSjJjDP9lmXcz54R8
	 TWlB3yzqvjGikpj1sPFmVtQba4M1k2Jo91mjdV3CgiK9rUNEr/OmLcAhgw4VoebsWk
	 bxvKFIW2claAa9VN57lAK3ppyjSjWbzVrWuFHaU7o1W7i1RG1l/JsgoKXKpeczfAiE
	 I2D7zVpe8XKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93193D59F52
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091095359.1003.12122228824563968123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84398cf29b6b15c32a33d4012fe680eb544336447ebf6868c5ccaa937791d7a8
Date: Wed, 06 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730910953
