Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F028207A20
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784373514; cv=none; b=LtMt+edukDByjRGDlUZ52zPRRvvklWxpS0lW4fH/GUJe6ssPWCqflrXVGDC94/3SDb5YBj+2SUfUGSwtguHE8wU/YJV9LgxyGTGWbpjwTph1w9pc2ZibhWpM/g9ImI/W6uBOZLFKwQf9VQjhScsA48UCv4m6HYiYuwSF9wXdxJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784373514; c=relaxed/simple;
	bh=3arBHFOfUa3TS4ZYX8LdqDsQZiTgxYnObPLtP57r248=;
	h=To:Subject:From:Message-Id:Date; b=G1jDrcCuLtkGkVVg6EgftgfQUU5gbNcBoTUG3Yxdqqg8H5NSSbDjL6XQ96keiOqnxSsq/hvM9MwT2WcZSYPvqoSs/8YdN4cBRI3cWG9wt13SiFjK8bLbhGTFbB/5bZy8eSPyhx0a0B9aHdXipqA6Koq1b+u8V8wPp9yCHq8cilw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH4HQGps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH4HQGps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0D3C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784373513;
	bh=3arBHFOfUa3TS4ZYX8LdqDsQZiTgxYnObPLtP57r248=;
	h=To:Subject:From:Date:From;
	b=EH4HQGpshswViuHlVspGGYzcapsRtxq4KSM335RY7RMm7/zfzsSerWHWPQEq5mXde
	 VfT2NqJylSTF8MmQkQw9YwEpAek1zObnhMgY+dfBO/vnHQIGjX4AlsEVfuBk8p7kzP
	 G/GmoNxupXyt92JiZD5aG6Ci0YVsjt+6b72tqW0EZ+3ADShLiCmg6aS8S21dkpazI9
	 Ug0kl6nZF91Wb4AdVt4lC0qEl47ycIyXdPxI/I69LAv0fY6z+8d2sXgHny0bhXtS+6
	 RaPJ1VlmIGerMR1OXqIjRVy8HbL01thvTUfAx4N+leEcJR7jE6oYLqJoS2U1fGfpgw
	 PLDnAenGVBDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E35C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437351368.26271.5238403013507590266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05394eb0d13b8e01dd3778b14a933f575a2619a4275a8b673cb6225680586e92
Date: Sat, 18 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784373513
