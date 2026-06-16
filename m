Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538A136A356
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781621794; cv=none; b=TCcxwkxXCBmRlViUuCcOwOC9Veszi5fy9BBDFGyzOeOwllbDaHZtE/H+n+ndHZdKv6VyLjl+JbKGIYDfXEHcjM9jh0gPEi/9VyS1s399gj26k/LPPUGVMTYFbDq/u1tyREHBNU3+P3RoiTXsduEOlrjlNjxh/o+zWnIr4uGITfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781621794; c=relaxed/simple;
	bh=pOa5bI4BD/apkS1mL/tCrXs1IIQqrQjUlOLyxBZlx8k=;
	h=To:Subject:From:Message-Id:Date; b=mhaIbV37+aZ7sjHwNrW2fDOeSXaWaIZWFKSF4BCw5J6KwR8ZZ98WN530riz8qbkUTNMENKZ9qRo65huLgegFBEovWcPE6YO5ml/Ubo0ugGZeq0MegGbYHZgZb11td4mD+apcLkoiXy/KgtC7fZ+2zNcfEriccJrrjg5hH8luzWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etamGiXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etamGiXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E5C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781621793;
	bh=pOa5bI4BD/apkS1mL/tCrXs1IIQqrQjUlOLyxBZlx8k=;
	h=To:Subject:From:Date:From;
	b=etamGiXnHZhvbSUoMNZj0m///lXklYXKj9PJtGEw3C5WlaFIPgrW6g1r4sO4aSj5m
	 +mZkBdp72QHPQoDXiSEdVZGiRw/NdlMBbvp2GST7wEpcW4Zssy3hneeY3P7fR7Pzt6
	 7msaDZjRC40/SqYUeQbLMlS/M8QweXWfDSY3PHgqq0A9xZqbwJ+/Q1wcjqnyxFZGLe
	 tDCyFhIk8vg2a35fATyYRl/9MzKDs4nKFTkPGV7D7aDZQT6c8w0OjRD0JuAsxsWBhh
	 6P1vpZbD/kh+8x8DBakt6niI4sYU/mzfe/IN1JmEwIKm5Md3BUobUutRmnVRiM/Nxf
	 A2pmBB4lSibFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28B6CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162179372.15072.12905320453728308339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610a29ef42b9cd5a6d31912270639149516cfe4507cb534947ce2857db79f788
Date: Tue, 16 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781621793
