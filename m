Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049C6283FEE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939194; cv=none; b=fhUVBMAPUKCkE+ortr+RFYtjWYLi/xxYgu1Ud+ehczQZIFBTs+ZE9H3W8T/Aad3tBYsl+GDYVq0gnDPwKnfBJwF9SLTNVDZ11kg+OzKhnsXnaBuzYPkpahCrBm5HkSsIaJrrLWdjGpCZME/eOBJpS1d3Ad24eY/uwmkWtC3fhBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939194; c=relaxed/simple;
	bh=hshXqAKSBDvvXb+NzCUWv0yB2xyl44O7ftzIqJAw7JE=;
	h=To:Subject:From:Message-Id:Date; b=txko6rleh9YK+BbB2Y9jvOI26vN+1FkP9DiVFsaKZXlem9peX3VjP205zejzgVsEHz3jJYqlNcK1hMgd2/6Th9yM9CjD3uom9GtXrdnUB+cf4WWsgA1hChZ1GKumtCb2n/6wzkB7eD5QsWfEFLH1MmkKMd2gdrgI2tbe8/wre0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhvr0J/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhvr0J/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B66AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762939193;
	bh=hshXqAKSBDvvXb+NzCUWv0yB2xyl44O7ftzIqJAw7JE=;
	h=To:Subject:From:Date:From;
	b=Jhvr0J/uSricNQPttvB9vNJ8Hd7lIjV2VAn7yPKVIY6031qNiuGqVY7KF355Aq+DC
	 oVeMl2ZIKH+x7bZ+mVNGkSP9yv2ggPDJFA5NqmyVfOUOhBTYCqZyD0bo0ngLJW2gG0
	 gOUJfQHJ7KH9gfh948VVCZHR/Lwztavq2Mj6kvA+8jhbB0j0kPsJd8oqUB6a/3pe8t
	 W9Y6SUoTPOxthNP4oqplZX9Lf/3aLeFArA9+j1lBL+EPuC5V/fBfFpzfQITnTvP6r0
	 qeAlc9qXTIjmnOkrWXKyz+sWdAtvl2RmcBJZI9Qoo/jZXZHR5JI98GmkEdQPt5M8p+
	 RcTk5LB+v37WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E8CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293919358.24202.16217538138244735284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba95978b407e9388650daf4ae8ba6a065330d7da563211399a0b04a558ce8b88
Date: Wed, 12 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762939193
