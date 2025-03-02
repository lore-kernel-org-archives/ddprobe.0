Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EDF2E630
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740942533; cv=none; b=BBzHx8FYhIszlRzlWjQE9Uj4qTo/99kAGX6/0jHPmKuMqIXClZ/FsanAT19LwlB2wT79BNA+m1G95GFFHJ48jiVYztELjG7kDl3vmGVWWdK0wT7nRy5Oq+xGkIwkppebZxocFo6iTAMZFUEPHzbZSOwkN7Op7mbZ6ht6ZlfXgZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740942533; c=relaxed/simple;
	bh=4gpHAgz90pOJ60yp/5+zRYfDujIvX2R0bN9W1pA7p+c=;
	h=To:Subject:From:Message-Id:Date; b=LM8zRNTTlLLp7IbEwoNqjOFLoYHz18/kDx3M7yolx4rUDlgR+wafr5ntLbJxdG8DOtFtBxswjI7JD4Z44qhC0TvlQTR/Fkppv6gd153uQfJPiyyeQ3KSuPH+LFW7lRco3HgGvHXzckL8qfqGwIf3f4h2yQdhhygmnQzaqTXsyS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAp7/T5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAp7/T5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF48C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740942533;
	bh=4gpHAgz90pOJ60yp/5+zRYfDujIvX2R0bN9W1pA7p+c=;
	h=To:Subject:From:Date:From;
	b=HAp7/T5+Zk/7WQUg2RAvv98EmH7AX6pxWhl/6QZXE5gL2TmZrsHIXBFBUjflD+UN3
	 kkuGM7MvlOn6b6xWfdNBIPKkxXQ3o7fKkqtVn0OfbskCPj5jLsuVD3CYcAayTAF3Yf
	 GuZcna4GxBwAj97sfKVq5HFzsdwXFcRRIZGXlYtrUr2gtSEfiAhvUJ9XAo0NWkxfVp
	 kYXk8gXMavTB9BkvPrj7iGouQO8q3EoHThQ17T47oGb0Nm12a+ZR9qx9Iff1Ht+Eyt
	 ficV70P4e4+K0ViaSakx1Xews8izdbRe2g/We9UygregJlERROZFyNQdz9+xd2xvGr
	 pCC/G5SmncAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C29C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094253359.828.17579741140319834134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b29cb9564dbdb601dcd24b6582c63a453b39fe727abdda65c23907584e3564
Date: Sun, 02 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740942533
