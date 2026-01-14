Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9200379998
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768376034; cv=none; b=fRxfsylvxPoEZ7rO6WUItl6OFMa/Kdnv3vSZO6Nz0e/u9RUYSOVYVZOVzJESqhbvBzs1WqiogNwjIIa2vBfdTmZI8zd7j4A5A8VcHFw2Uoil4wjLGJHV4dit44jHyk8PhMpwqYLqIS5EPFEbcWoIsqrQaOTeViCxe0WpjXdYHkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768376034; c=relaxed/simple;
	bh=QghSTPSEi00e5HzZkT8c31Rdnvwmo0Hp4J/FNyDrV4E=;
	h=To:Subject:From:Message-Id:Date; b=AAy177Tpy5QBS0pvuV+VeDNA8M1oZKuKLQExdit+yzWn5NUqxDaulbC/oiAYvzf/+lez9Eq1kJ1eN0KrodGW1s9cPArX+bGgciiJVp1V5fpU4PlC3aW0Sx7DbtNpb5d5ZDrhN++SvvcPb1XAp7KDqcGvc5rcyeCEjP/fCMdTsCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptNYfpTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptNYfpTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFAEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768376033;
	bh=QghSTPSEi00e5HzZkT8c31Rdnvwmo0Hp4J/FNyDrV4E=;
	h=To:Subject:From:Date:From;
	b=ptNYfpTZdWoVk7RjjHN9xVOV+wYYlGeZcSWRses981BWHWGQQ2/cMQeM3kAIoMGu8
	 CooEEf0dDQE7DkTUMZow0oG4OVfKJ2GzkmLIrQKdi2GM2qgpT/QTLh7k4x0ckIdaKw
	 LcjOWbiM1TG79Q0yY5bPItDoiQUF8fahV5IA9W4eH5+GKOLyPEzyc/Hvrp4pqrUCNf
	 8+OGqp0OFKBXljRcyN4TZh+cM6Qpya0XNcYKyMsX/XYWa4CCZ2hoWvnb8Brxh3o8y2
	 GtArTtKcl0oUnHqv04eIfOvfFwaV+R7sI/lHVds6KBwmZgbYPqH1OUC38cdNCf+Djh
	 dVFqMNbxRXdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FDD31A15
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837603357.19800.16366733694220553234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24208ddfcf987dca8ba12f157816135428ed6a7382241c8634c28406b46d14dc
Date: Wed, 14 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768376033
