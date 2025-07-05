Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6341A3142
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751696994; cv=none; b=Xxizh7xY0INseexcFfxXFgu9+Tv2WL4w9aa6GP0ikGvxaY8jjGXGfQKeyr5C+2b6OOcDrP7t557plVkpNkp+ApcgC9tWOn8BCmkxy7h16CIl40jVdMdZeZHuLVQF2oI7+/JbVVh+0c3fyZ7aoX+kPAMSfbqawMx0p2RvZO+7PRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751696994; c=relaxed/simple;
	bh=FBBRuOz2/+AizwRCpmYk5eC1ftVlAgC0n5ANVCCmqmA=;
	h=To:Subject:From:Message-Id:Date; b=CzQF9Yx6rKtccD828ny9NGh5lVJ/fxW7MquM6zbRqAbwTdw3iL/aZsMV9uinbF1leLD6+JuhXg/sI/pa9UPqaM7Q1OdFnR2vPTGQuSJnzFa3T2ovhrU9/waLV48RKASi/I6yIcJqT+aeY8sW2wEQqbrWgFFA1E8NEcTNZIPE9WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no5eKhLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no5eKhLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B08C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751696993;
	bh=FBBRuOz2/+AizwRCpmYk5eC1ftVlAgC0n5ANVCCmqmA=;
	h=To:Subject:From:Date:From;
	b=no5eKhLLIZa/QO0UheyGMho5Y3rRBSJZfz+2Aq+qUg8JIEEwg8O1xkETcReuTCspD
	 wrH+rtx5e09pAljaHymySveAAycYD5UEiYAf7RvD0t5kYS9H9XUL+QOola8p4X5x8F
	 BzfpZPxPc1Bgnb6ylu19k0pdx9iFYeSyPqV7qBUYbjRQSbhfGABoPh4CxepZjd+Wi2
	 MqID6DC0OtKMzX0yYxrpv7U4Yqjwe6l+Z1QqcWJTxV/6CJFT7QGwlg7r99WX0AMur7
	 vxqooTLxCOO+G0gd2jGtUWyljMgJI4qlZdy5/Sjn3hXs3aYeQufsfrBHzGRPAsae4C
	 WEZStMxrjmzsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92190C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169699357.21654.15057955791187944781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9080fd159d97083fb2fd47fbd8ee0712989c9783225e263a854688f1525dd044
Date: Sat, 05 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751696993
