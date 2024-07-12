Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E2618E0E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720770443; cv=none; b=XCEGqgQ0uWoy+956YzCTv8+OzA3xMS+mY89HmpfK5617abMCDvwLZM3ZYk28rIeCMMW13diTcxgiS4Y0fA1ygXvZQDO9PM7FlPuXCdmJVEsl9LO3Dhl5TJnAMBZbVLrB3wYNu+2LwTDdJGm7RYbj2FLL4Sds8NtGZPO1PY9Y+PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720770443; c=relaxed/simple;
	bh=hYsrs+2jUIqPMc8NPGcnHO+lG0YVcC8Ze+QGwVkf9hw=;
	h=To:Subject:From:Message-Id:Date; b=h5xbSX513Teefx7WUaW5bNWSboEvlnzJ8EyFg4ynMzfj9VOVydYoCVB7kyJ7NhCnQhVrdvNBUTHTSNTK0kpEnkaEYrIm2RfX7/jK3rTUigZIqv4M/DZW/44Cc0jNaNof72mDPtXaCr6++2/bSdEdKtcTk3wPVM7l6lJWGlJL3YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqacqXDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqacqXDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C11C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720770442;
	bh=hYsrs+2jUIqPMc8NPGcnHO+lG0YVcC8Ze+QGwVkf9hw=;
	h=To:Subject:From:Date:From;
	b=uqacqXDaA4HlrMCaurYMwg4PvK+eAYrvNz+8FVw0jw+ve0OkxC9Kmv2Y5dGzmZOzh
	 lcdOg8YqlUfVg1T9u43aiz9agIZfOjjV9qwGyMjphOjzWd8X/d637AvnYmzXampLGO
	 mNDfATaDNBrRu/m8gXn5In3nmh0a31+uGfp4pmnlerlSURcOqvABlZQDYKd18cWxTU
	 oFz5i9xLj08U5nXsRKdmztROEa43u+k26lJDGF40JmEGwAoewtXlpHKTrq895oJhEQ
	 YOFq4sUY5qafAdNzcH6A6JEZAn1IrxuoYL/4SoI5jRkZkjBPIs/ZFAerognMZi57SV
	 rpKdb/Nc6wqsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F39C3DA4D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077044280.1818.7426911743770564314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99638bca1913b845493eaab3256a63e4f3912247f727d334de661d1ab11880eb
Date: Fri, 12 Jul 2024 07:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720770442
