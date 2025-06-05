Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5739B1CD0C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749089395; cv=none; b=u12DPT/hxUORfeGpeuzxIOFAjziYIU/YTQnz5HEvg/hB/bf8Eik+Af6U5Brrg7VGY6fEPZcpPF16SwfGMoh3/Sp7iu5ooGLR1uU8RpQq5I3l7jC2pl2vBKb5OapfgsNaRcZ+HeaTCl7SH5+x65Met943L8D0EqVcdiObY74/9Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749089395; c=relaxed/simple;
	bh=vrHVyxwS0w/vo6EUc0UGs7dp/GozkIyKWSrEooV+9ws=;
	h=To:Subject:From:Message-Id:Date; b=N5mAFnqQCWXmkqr5IRFIDyBnZg9GZf2oe1GkGXaYW81+jgDAIJtIZOHw5RUQTkbdfuNygI1FxrA3tMJRXna7zoPN4dg3z2N0bAu0lGHGvt52vpQN/Zn+saQfz8dJRznyXY1FFgxA5BeXwCt9R5cVeUWt2VKS2VmRRnP8cQYFVi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF4wkwY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF4wkwY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5E8C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749089393;
	bh=vrHVyxwS0w/vo6EUc0UGs7dp/GozkIyKWSrEooV+9ws=;
	h=To:Subject:From:Date:From;
	b=sF4wkwY57H2mC/Ck5nnz9rZKXNcPcZzg0VRBoOpcTr8eUii8sq2KhHspa05svwn+o
	 jJo09E7Ltz85ugumnLuX8xwWn/thObAOcxJSfrL3pxbaJt/2+mD8G1JxEDeempbwxu
	 RA8iKswxjdFLrEPQiL1N7BG9+q3iR12O0vLtQg47eH5Z1u5EbtvsL/Cg/488Hztp4M
	 8ww2nmlmPbjLy1zCcW7nwlwph5dDDe3yMdwxYNsU6HDm2dob7Gm/QDxhcsGdKzcAcj
	 07lMh5E75vBL3cs/YfJGsPJEBaqD2cJk9op+W2oTGSxk9CDLspbqSTKv/g5JrpPKz+
	 6O7fdKpqI4/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6FC5B555
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908939361.28942.11952888781545910360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc93f250fa3969d763b617f8925ddc6940ff9856dace5959e53bcac205dabb35
Date: Thu, 05 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749089393
