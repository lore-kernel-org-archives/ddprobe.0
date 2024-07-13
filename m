Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509D3846F
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720837763; cv=none; b=oeOwbb79zQi3arDeAntDiUiSUtjILh1eZ/XEdhpqJTd+7yLaT1w0UI4HYtY2Q0LqtgizjlpxmkNVnHnuQOb/ok7hCOeIGe3uXX78qk86Zv4/YW3jubsHv4kjrGzTVDbQ5Ta5UFgv8/JMI3TjRvSQPLEFk5VWK+DhIu/l1HHSM7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720837763; c=relaxed/simple;
	bh=+C3gQ+JmjvwQcgrJiig4AGw+lV9Jq8E6HOaDFyxNkLg=;
	h=To:Subject:From:Message-Id:Date; b=RZ4JV+u/hivU/iob4PzMmazXy/cACwAMw24e9wfOkbdMutEJnJTpQ9zuic1X8wuG+1z7J8oeVpJwpEj3xh4Uhp98n+VlVJNtzXRAqjPEFFJhruhdJwot5p8n6ZEVGlJi1v52CezeyKENgwd0QWcCHgW/I2L8LW2vYP5AQaYd95k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2S22/Q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2S22/Q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F57C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720837762;
	bh=+C3gQ+JmjvwQcgrJiig4AGw+lV9Jq8E6HOaDFyxNkLg=;
	h=To:Subject:From:Date:From;
	b=V2S22/Q2RrXL6hHhteGOOQ+hsidYhqt7eIuL6X6+yc6xvCqD7Df9fqVwON/pwqCLn
	 d0bdOrQpjHz0eDVDOrr2BkNaPar57GAYJnvaw78Uq8OIs6HiC9LzKgcSUzOC7hZXzG
	 KQzJzhlMXjtARshPI+1XyrY6JE4fDe8wQ/aK/4Xbf5LAC2wU0RnYjFWRSjqGIjzfZT
	 n07/THearmDxdl98qotJWizK18ciZqyexE+KbrPyFYupINoPYDTspzXX0peQjYGDER
	 bHs6ysGVdlJl8AlFtI6phmtfqRUEF+ose7pkq08tY2+GBoykCZEtQWOUUcKjh/5fey
	 ykR6Ska/YURDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAD6C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083776281.24485.671875111698252513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7455e61819517ceeb84ed535462cdb660fb8605bff694681acea8a85aefb65dd
Date: Sat, 13 Jul 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720837762
