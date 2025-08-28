Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176021E32D6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756390794; cv=none; b=PeGDM0MdWpROP21yCm9goJCqAjmqxp/hbVaiJz2r7vEeLOpTusUeKc//iXjfglyrq7Z+DYxQPcTHJAmIukD86wvWDCJq4RtpewgmnD0QNCw1jYoNB4DKAnc7BmxYBXh1UWAsAwkHYrGlZK/V3fzqZqBHfpZsqdD0Diy9lDyM82M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756390794; c=relaxed/simple;
	bh=0XMqkAcvwtOJmV2RHVJhqShwpiu0p/Su9996OELzvSY=;
	h=To:Subject:From:Message-Id:Date; b=mN+Pmljhy7GjZpyAoBf6h5PjmAhVvy1fIXj4t/6RxDIvze4Ll23TbqiKFYwUWZpkwCVC+KEpSV/hm/Ukexn/YBhBQbQq6E9SuVRZjky93unSFxCscBPfyRePqmffaL0DbknjU/uD0oy9ezbZ5r00jzO7tpvqVyGdiKbVMoVzjXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWuI8pYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWuI8pYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA95C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756390793;
	bh=0XMqkAcvwtOJmV2RHVJhqShwpiu0p/Su9996OELzvSY=;
	h=To:Subject:From:Date:From;
	b=fWuI8pYVVWxpZNJFDcquukrCrWY2Ahm6g+fDYryQMaRbN5N3LkFuVCxweLMH0U16S
	 N84xHJuTAsxi0LOyU4WBgo57otYkhkj3oINLZXj5ama1DpNah642sxO27Xt8GApuN+
	 3MOoNjBAMGXADg0ret2KKpAOd2sppCCmwiYj7RBkNl65w9auTmH6zQY2nxJuFE7CZ7
	 I8TGMJjF5jDOCqzVw4SkRMdtUUZ3cNx59jBy/1yc5MDxQRZQ+LSQ//vIc7a0b/CF6C
	 G/9/yCvO5Jj+F5JF7tmYBLXLlDruv1bIkWA2LIZsMY5KIOPZhN+eDiOajsfAvpn5Zt
	 LUdUveBQPcHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAFCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639079358.20804.2815768927958899727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3ae0b9f43cc96fc8bee9f25328671733d8f071fdf2c8e9218a6a43d0d74304
Date: Thu, 28 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756390793
