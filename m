Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5155279D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720392383; cv=none; b=YXkHFkywV9Bf+oZaa9FcivIp5CaWuj/E4U0r1a+cMgylfPUBW0ZT4cB6YpuB52lseYPWDnRZ1VqeZuRu49uiHCkgr+7OZy4z4M+xjqxQJ5oHoJ0A4JdwbCJHpH+fmfALCkz42/6VTuc9McJJb3Bbc24S7Hc+0o+BMqoA5Jtfjlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720392383; c=relaxed/simple;
	bh=TaCtLySjvfhNgNSPNRKkWwBzMG9Njrr/TOvSqYHxLEw=;
	h=To:Subject:From:Message-Id:Date; b=L5DR+gZz5xQut8/YYg/tHtxQfWAbrED7L1vlgsVA2SxF9K847zjrsrMtUatBw7NkhTm/UYfvbizq7o5mv5EhuS8kqTqaCe4cbz2c5pGm9Y0NJvOPgVNpPsZq3s+HM2LnmX4znD0ZrO5jzfOU/eQBrjhny6Bn/9HTSWv2Mv9sAo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOYbpsjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOYbpsjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D34C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720392382;
	bh=TaCtLySjvfhNgNSPNRKkWwBzMG9Njrr/TOvSqYHxLEw=;
	h=To:Subject:From:Date:From;
	b=MOYbpsjPXyqwqPp8PBWrjJMVht7xzowoY0w6deLEknYt8k4wz004a5fMDK7iXlnhp
	 PocdJRNvzyMcBiweJorvBXlOpqn5dM4uso5zVvOlmZhEbhIFZj4hnjJ/xGRMQd/h6f
	 Lel7RENQe6+QYs1nzI0BbPIpkCDUr2ULFx54hvayVmj+0WsuXMfPP0oXhagUeZep4n
	 P9lSk+B+8pWyZLnMdBy6WkiAnxKltnvRWTvJCCkwUNncVqPiBVk5saNMZ4V2uLA1EW
	 IwKbrlD5LxeGoc2QkKB0P92Q3yicr8sj6NurFDgD0CZVXpLhOYXPyZUYmDS3/ABsVg
	 IgiaR1VSDOASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6635C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039238277.615.689256861776274361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ae80bd1462a0b6945640c7cb9aac01f010885bc6c384870e64b846b1d0b2bd
Date: Sun, 07 Jul 2024 22:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720392382
