Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D8323AB8B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759512595; cv=none; b=gatM8qiBt8OEIguOHY2eA/po1ZA4OIkNR70Piq6hcPCdLto+KnqJRZZYs9Az/F1lvcuP8qeZlHgwmzJ4ipebS6aal0JTr3c6OJ7cQQOOdIVwzZVU2Ll8Oia0DuPkKrbh5yuY7m+tRhRHc4yPT+iZorkuC0ez/afJVRVqt6SQjGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759512595; c=relaxed/simple;
	bh=FdCEzdyXsbClaYuHc1/Lfc22rn5CHepmZ9BPxpehE04=;
	h=To:Subject:From:Message-Id:Date; b=D9r9U9x7MK957/FoP1WlMYiK8pGUOFOPiwsJGCHPQ7JcUTmHgis5VoYC5n65uS1v4n7BneLVYXxFziML+cB/VQb+ReO0XU1Fxy3xBEywEWUmVOczFQDua5BMEgRuNZfhvB5l7S7fYkdNzyNE24KjtEP4WnT+wa54wL8e7xdiKWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMfRqfws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMfRqfws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B294BC4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759512593;
	bh=FdCEzdyXsbClaYuHc1/Lfc22rn5CHepmZ9BPxpehE04=;
	h=To:Subject:From:Date:From;
	b=RMfRqfwsQY27AQKkz8ybpc59CNK7qHhXU2gwvR7BMPvFtc+wKrpUMKP2SIYzq0rZG
	 HqTeuspyiHCYxG80/JIcZeJsBWy9WFeA8Fa8S5OqAHCUD5ZiyZz3Z9H82Yzd+V0MKi
	 LV8TDB/FibHmVgwwdzxJbghT7paiG0MrNMbiSgim0Jge2o6Imqi0qoJb8D3dYwoRP/
	 6GEa5AJVVkGC7yZtIODzJnbDe1wxx3YWaglWvqJL1AF5QtSo0hAxPpZ1qlhUkFV+kX
	 3FRaV7XX6M9ulgiKUKKVE58sFL/LeFgrNGXu7KCk4DTM3xiZfe2UN8qZFZiWxM+ISr
	 HYwRuSe+R4Haw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FFDCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951259362.18276.1932722965242304007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fb22de9c79c1b989be7f78458433bd51d9734a02a727d8fc0200fae88b597e
Date: Fri, 03 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759512593
