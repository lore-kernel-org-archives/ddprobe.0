Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EABD1DED60
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746379795; cv=none; b=hR5nHhJtELZswbOyXTp7eyLJxFiea+Ag9c0+aU8eM80mmcaKL2MbefiXK/Nl6t96l9wVaW+8au3YxY+DRMrhR4d3OvYcVISFu8MljSVggnN/sKi+QPkgt83MWnNibfdag4e4XJdyCJ+inricryTheoXFcojn6JIYv472+8UyI88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746379795; c=relaxed/simple;
	bh=ryT6YBSd1F6Y7ndzKWGtnPBF3PndJjSKlhCXKOro6dw=;
	h=To:Subject:From:Message-Id:Date; b=ATXebxxwFHbSg3TugvVMZj73/Ow3Cc4TZg0hMn+8HPJpBnjujlF98h9Az5edMoF2UNQSByszBKbDrdyXh1iN1g5E5jA1z/1VSzqJkkijWcvoQr2VSpmAGH7Gc7tUp7D1wVPDgIjyBypjCVWWxjKWt7qeJsHQLegZSuDLB2PWBDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNY572nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNY572nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F901C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746379793;
	bh=ryT6YBSd1F6Y7ndzKWGtnPBF3PndJjSKlhCXKOro6dw=;
	h=To:Subject:From:Date:From;
	b=uNY572nzaJh7x0dxeo7NVUq6gJvPbzYn2ukvVL7UxZWbw7aNk90EktZZ5YnqSXwvj
	 FqOQJZmZhKoLeZzCRcb8jF/BKIazx7PDrgC34le1gFcjCaPIM7fgJIe8yVoV08KRPa
	 LOehyPUjcdbdSBMxFa/z/uYCmjCXGPZSxzGcyeyBu4O5KeWd8ksbWowPMAzWAc6Hv7
	 Ddw0gqqPY8MNNv6qQs7yR7TajVa9Aqvcg2VdiuXCWvi8kdZElKja8l3ypXjqcXl9Uf
	 2kKV009Jc2vQDtyZlhCTMEmRdcbqaW1f73H3u2FZswcVg4J+e1RpeYgf4/m1H1oU3q
	 8uQ0PCmT2EC5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A6C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637979357.17446.4225496911471078238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8feae670bf2da5ac3915cbd5950016072b3499cfd9447e8c34fb93257f49fb4f
Date: Sun, 04 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746379793
