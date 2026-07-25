Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFE93603C3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784970034; cv=none; b=BaEO6i9+puMc+xILKkHN+ZZAA+lyDbKyjSYsPwST/iiRJzI/4z/Dm5Zm/AY3p6tswNlXUqDiUYrZnxAf40hHSybCtj97gfoQ2gjtqZnoeJ2v/j4wpiBwvE0ySxoBufRr3x1wlT9WrIcXMPZmagjLLKJqyf0zzuYtIYjojP4ZwZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784970034; c=relaxed/simple;
	bh=bZAVZp+1XRD9WCZN8Sctei7ofd+BP8vvI+PjlRrFTBI=;
	h=To:Subject:From:Message-Id:Date; b=XS6Pj/VUz9lV7FFizChyLMZZ5PuU2s3Uql4eTPLyWOYCY4Ma8wWA1KS1vXjf/fWZIkgN+xK7tz9K1TfotBCKkbmT/kqhYLat8N9yamFgLCzim7GWq5TqFkw7BCPVGsZrcPfGRuNjR3fFB8bS9r/TncuEDq71KynHR7HzR/XOKO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px4ILJsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px4ILJsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB09C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784970033;
	bh=bZAVZp+1XRD9WCZN8Sctei7ofd+BP8vvI+PjlRrFTBI=;
	h=To:Subject:From:Date:From;
	b=px4ILJsiuLJUWk/ZVado2bwJKr0sTuBuuxvBXd75MXKGAGNH4REeNO1kknwydtVeg
	 ziNhm5eGMI5MrJAvOSkQC4OlKKeQ/2nFqxbti9kyWE8PVOmUJcY55WmBFPapTjS2hS
	 1XBb+1dPtkbu+uVelqgv3qtfse1o9dV3dz8QwOthJe2CPW4F1HVXzcBkYparP/mxjQ
	 te4Y1RM9tYIeLJ6HNXVsR6QfNY2PRjbfX7Fz7P11c4vGUBF+HcZALThKTRn1F4Li/Y
	 42tDoFMHAwR5b/Rc5dokYHjkTJ64p+pQYsLFZQr7e8VoxiWC2mkZOX7yhwJiVKNOyw
	 sV+zuON7YPzlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB038C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497003369.17173.15537163253863782218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccf7f521288a9db6d253dea17148f4a49d32677a5e14c713e7ae45ca05df99b
Date: Sat, 25 Jul 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784970033
