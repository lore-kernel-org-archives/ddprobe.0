Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36696244664
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764758574; cv=none; b=CF2oB0rD2CKAArVbLQRKAdw5/Hmg9HZrNbqzDYPRmdmfyaOuKcCn2j3/QzZ96aMbjqCvTmUCORhVMaYInPvuYtV8E1vn4TSw5eX1Vpc2rSCEDjghdZmCZfdyiqLWnpLWkjaUq1fF2Ea7AJwq38bvox56E/c5+OJKGYIbhWTfajI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764758574; c=relaxed/simple;
	bh=y3q60UKPZw4wkNZa0OSENMMh3xWn9fVmmBOJPQFE6YU=;
	h=To:Subject:From:Message-Id:Date; b=C47VH0J+7QwvVnF4jX+NGvimDd+bgAxPCRkbbwIZ/vT3KwbAHROJHLCgo8X1X1wQzlasnSkJSsTzX1gTm60wNBg+CZbU07LXWNa0eW7GTIiYhDeBFQszjpbRa92XWAZSjCC+FxjgWoMUFWhIg/cHlpCLLsmeazq/0e8snbcCwG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp6gRS/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp6gRS/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BF1C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764758573;
	bh=y3q60UKPZw4wkNZa0OSENMMh3xWn9fVmmBOJPQFE6YU=;
	h=To:Subject:From:Date:From;
	b=Pp6gRS/RhqDg4hpHCkeMYw+JSVgQoLlncCp3nm0jjSZnK2Wb1UjOiJ7Tm3lTJPgxn
	 VYPhkN0tBfX3l1ZVzR6EM2Pjt/F+JMsGOYSQxKm50l8ezJpCaBYB6KRLkM6HxOGKAA
	 IID1fG2IzzT3XXiAsvDiSrWjbPX4njtSWdOEc7LhDbqD00a5QkBk/u90LPCfwKCz4O
	 sH3j5Io7N/KvacVoa0nlBi7TW6LkC1F4e4jF83/B5zkx+6fds/W49LvnhgF1CxCzZp
	 Ooabdg5z7tbTruB+1wPzWpEwjOlsYKkZ6VwXzzBGB/7l281pmho2dstvBhJAA+nqQY
	 a7TG3pVKFE5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A9CD12694
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475857365.29798.8679315908869111539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ed7fe959db2333a471648a02e96ccd68753dcc04f20270d043a9058578f45d
Date: Wed, 03 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764758573
