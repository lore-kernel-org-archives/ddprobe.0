Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89DE2903
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC34C433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665408653;
	bh=Vx1d5pYDjIO9oQ2BbZPvaZ2cVILFhaMFmVBgbxLAt+c=;
	h=To:Subject:From:Date:From;
	b=skTe5Xb3ULN78DjAguvOCCGGbzBWz4IvngC+GlKEm5+0YfVDbYaxVVmHpgHF0NXzY
	 CUvsjaJVCRVKq70g9dGq0NZM2T6yZduPhdv5uUzjawF6Sz2BTqrHLpgEkpX+eZ+GE3
	 SHsT1ggE9WtOzezXtNhzSFN7Dao06AomXrIRjJXnI5qPhmypaNIuvei6jpVGsFTiBd
	 dH8UHIoVBUNyPkLL8rKe8pfAx1UbFirL/MT8oXThJpuZQwUhd5dnZgnoVoNtN1SZew
	 t2aKHHCyQK/I3YEmhJcb5T7b3OOIT1LhbUjwwlJMutBVnixr1tWAZsidPUJB9XfOhB
	 sZD4c587q3iHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F68FC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540865331.11270.8834192688715965764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84c8486c999e78e396a7e63dc90d8cbe689f8f2b74ce81516d240656f42636f
Date: Mon, 10 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665408653
