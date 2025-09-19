Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185821ABC9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758323394; cv=none; b=jSB4CyPDUYNnWc9jnI0TubRwWvpO0KOIjPqUnkuxxcLi2vRDAyG4J8hv+UHyF223K6Jq3Mw0rrDS9BdAWmlrSbEuezITBuit+pLZFzAqBSfZtG0QBUA6iMucEQL1ajU5An53I03AGlowJVgtb2FK9jCYu+/lxp38vx9k3MA6las=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758323394; c=relaxed/simple;
	bh=JQfNYXLr0ThAmEf5lBU1/2GWgDrhCS9yyfHhApOMMXs=;
	h=To:Subject:From:Message-Id:Date; b=q4oN8ZUAS3JuGrz5AXyUfkxY14D0B4cOLQeDmGvp78E9jQbf0xbWqaJ04Kpxt4DDQ5ut5tepJnhTDzx4zfb8PJteDgSrG5pYzbfQPIhic8sF7Lx4Wrtcwnokktk6zPKhFVHBUDN1tnJq4kTPF0F7RblCaTZIF9zMWmMixCUiOe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSTqkarE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSTqkarE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96EFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758323393;
	bh=JQfNYXLr0ThAmEf5lBU1/2GWgDrhCS9yyfHhApOMMXs=;
	h=To:Subject:From:Date:From;
	b=XSTqkarEomssKzNxsFQQ+JpnqMa8huiCb3VGt8DF4CglV6bEFmjTT1HhUGjfB5K4j
	 3woT2+sS3Zbgw/ySCvvquXktnlopSdANL15TcBUNpgvr5xM1a/TLqnU/K1HZqcmdwE
	 gR/iyqGmm/O0Znpis/fNCP/kocqXLaliQ6t6BL3MoCtLgTBYDQK6WnlJhkzjzySjUR
	 3pzMHcVJoqt1a7MhXE1NE2xvv+sDZ8pKD/VOb1oseahPu3eGwOq/SvL6cayYerGotF
	 JbRJBoyhL9S1jP+mBYJMY2zeM7q+J5uA5Z18H4Hs/KjoUJXQwJfcWDAA3fcjKW+O/3
	 dGftFYhssXkLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481ECAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832339359.22171.7788791531503336484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38cc89a797fbb0f7bc06879eaa41ff36c99e843709329521c15ffbe301179e1
Date: Fri, 19 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758323393
