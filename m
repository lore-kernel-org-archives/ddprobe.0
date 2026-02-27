Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1690F25B663
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772199294; cv=none; b=k9B05bjH3hz6GZ7V1MRPXXE2M4/lp9Idi62F83N4z4nGnm7WJNwIWF/uFSyXVgHawnHKI5xH+LafHzN1aEVrMnU0f33Ys0W5LAqSanMJs4tt35y+8IBUarrgwqXvF2OthPQnx1BjgJmpsQw6v1EnRzhShCvXFjcwqF5mb4hX028=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772199294; c=relaxed/simple;
	bh=ubH+yrURcNQtO6e+GzPmbYbZsTpcS7+QaAUIxe37t0A=;
	h=To:Subject:From:Message-Id:Date; b=FvD6BDeAIONQnQ5uZ4PB9XFbq+j5ZQVUEattMVsYLDwyTVfTCE8ZyOZyScNfm9/v+jD9iN4I7KEG7aegBE5rkP/81gkEJ3wAK5ilRQ6BDqBZndveQRyn/BNy3/Z4FsVQpk3mSp4n0s7eYjBOVVBHZgsud8KU2QslCAituz4FIvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfR+oW2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfR+oW2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDEC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772199293;
	bh=ubH+yrURcNQtO6e+GzPmbYbZsTpcS7+QaAUIxe37t0A=;
	h=To:Subject:From:Date:From;
	b=gfR+oW2aZJUnXwM20lHRdt/Sc7fn1DL2kx0YFSP/YDOjkxCeqq73wGvGyyn8HYfZb
	 oPN0QRqEDg8S4pIMGzTnGLusLxddF/awfIoyN/7PqzLKDc0IkbZ4u5y6ADoSaIG64E
	 yKBlT9bwPhF0wvosGicvWHpSx6BfUi1zJPtHLIzLAX7rdTd9GiKz/tKy1TFK+yemhZ
	 30Gd1WwrkdNywCrvRJOI9wEv+NSVFus5j0xggAt922OqbSyEqWZ+HT6n5MdVDylnP9
	 XOkzOjhtnOB/0ilvxrLHYGbo10ViQahbFUgODlXtkybPukJfP0Bz0423ZWANU2pFnj
	 b4qgpExgUfCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B1FEFB4F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219929358.4557.16552845735711035475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c856dfb26ed8e8408ecb2007bad8b5e36133d188696ad8fe7fc1a08d98693683
Date: Fri, 27 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772199293
