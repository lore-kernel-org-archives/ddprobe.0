Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A5B224240
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770081834; cv=none; b=hkl/Le3FWIaulK4UxQ2uQqxQe4hK7qLGrDVXdzb7ZD7X+fk/Zpmc1w5a/gH0VB9tjr0pal4opSyuSp480hXOn6DSrdDImSdiQ0ntZLhnUGG75Jq0M0430lRz5d1gtPiJV3ZqlCdMUcq7CDcut41xBcqo8mHNywVZoYTsCl4Waio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770081834; c=relaxed/simple;
	bh=haw0BP5f1kdeUq3Ti0OyLHfuO8t+cZPzcDEz4AwpD+8=;
	h=To:Subject:From:Message-Id:Date; b=DG4xJlf5JVhXORfm3/9p6yfLWoUN+240HldoffTf0CkE38NoLBnCct8iOB4o5qdZBb6+eMp1puujeYBM4jn+bRL8nnaGj+XNE16Wtj+fe00Ri8kiBSuNeVzQ8DsvmIhuVj5AK9vrxfVZ6Ry+9K4ZkDi0ys0oLtORnlknZZ8dU6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKWpEOhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKWpEOhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF650C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770081833;
	bh=haw0BP5f1kdeUq3Ti0OyLHfuO8t+cZPzcDEz4AwpD+8=;
	h=To:Subject:From:Date:From;
	b=QKWpEOhWcL5Ry1Cz2Jw5YsouiVfL/joWbq4saBGG+aRTfSg6siuPmuYub2MJ09Rm6
	 Tz0ibAuCy8RHLe7M6Av2lqrHo3B1SFyR5eDJlz5kwOcF153MIvib8u3LsudQiixw7v
	 eV9/HWzHifwnEXw5Nma57SuAc/2wu9slgoGRshVv3duj0pOGTHEI/ZBWWY+0uLmywk
	 jAzijc7JXdzx6jp6J+33pOEF8cfVDvqvUqdamJ3fw25vyUJZXOtgT8nibopwT7gbEv
	 gcgJ3TqFRqzVG0atiCPCh4eJrzGlMY+dNHtAvB8GiZ+PBH5ASw/qLhOY0MZk43670A
	 NUYIUybwh2HnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6553D172A0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008183366.29499.3956270767482014407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db10b180d8db8f203e75e69b270e1508b5569ea010d3bea7da221709eb64aac
Date: Tue, 03 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770081833
