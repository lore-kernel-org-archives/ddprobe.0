Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F981C5D46
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745867994; cv=none; b=XrQEP3dKmTSBK+ReZeIUDai3L7RMLOQq/zQvGkPEDAb4bIq3Rd64xtQQclB3+qeNWcQgWCHDbo6ae/dCdREx0buYdgUz/PAjpYaUNpFy1dVUavlLojH+moqpm1G08v6skzI7ydGkfMPUkXQJNYBtA6sdLmnf42aH/r7g3oZGHfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745867994; c=relaxed/simple;
	bh=TfEW6vffeJqFaJnq7BASgn8BfLzhWfj2WAa+z6nzINE=;
	h=To:Subject:From:Message-Id:Date; b=INbYaNO/IlWrv1vcfM/ZSOFMmJohHr3KZoqa3N58Glmze0t8lPYguEqSf7b9aNm4S0ZEelpJ0pqOaYFzKCWiPdPk0QiaWX4D3TQqhrX7kYDXjC9vY+umg+WRO9W4SsiOKtnzQjKFsmeL06At7pafSQbO2Q3R0xV5TAMqt8rtwYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQX8iE3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQX8iE3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD9FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745867993;
	bh=TfEW6vffeJqFaJnq7BASgn8BfLzhWfj2WAa+z6nzINE=;
	h=To:Subject:From:Date:From;
	b=sQX8iE3XQTOsS7D0HHv9EhucVQuCfSm1F6wFHKlyTK2xntCxHz2gSbinAEbiKrmSO
	 cDv1RsbZYH2tdBsccnB1fSk4Xpl0VBmGS6NVkZlZPmW9XHT8cB3HFFn4imYadzgv+p
	 MyWzs4NTdrg9cHzSS6ePvZY1ytOVEy5T2uE56Sysu2ayI/OwxuhC7BpHPb1GlyxdBq
	 rk+Z2LZg7HD8WbPrFq9PckZXaJr30qzTKbj04W9pE4HItjo/k+eLzI5t/g5yLSZhi/
	 5c2whjgSdF5AfmIvZnjkhGL9W5r2n8Oe/4xZuIWd4uXJ0oefdabPjRjAEI4zJGBTB1
	 n9w+4k4e3tVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E522C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586799357.23728.3382337337396750302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26b5635ce5dc6f54235b9ad0e10846bf8c1ce23973acf9688557414abd434e5
Date: Mon, 28 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745867993
