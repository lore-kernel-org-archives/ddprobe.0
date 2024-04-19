Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663D81E86C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713556823; cv=none; b=utEtfhlh1wlpAQhwSNvHDSZH61V4gYsGUf8uPlQSrvEW6UqwYhZeov8KMNjQDnu2RCcg9VAXZLpkGEzn31pmOO1a2TGPLvAX7m04L9YhijwDaobpiWCHd9KkJYFFEkwv1UTtvZUF3V10QXJVakz+xzA5jTotANWueVDdYmP8Ugc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713556823; c=relaxed/simple;
	bh=VEK+QCaYbZsIk6KquVA6CTcWY1M7d2r3Yu6EovB43gM=;
	h=To:Subject:From:Message-Id:Date; b=rZDR+R2NSrDf0oG3ACl/LpD9vaOO0PdAc4AyoYBtaG8EELPrvJu2a6zROlNKIzqgmXXZVt3Vir04XvNEZqojixrzU14r5T08O2a0qKiDLcZEWx1lCn5u8lS6rG3Qp5Lw0UPyf9FXYMoyHe+YhUg6TAO0QUMO0FOpmnoKG1W/ufA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zpt8c9I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zpt8c9I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FA5C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713556822;
	bh=VEK+QCaYbZsIk6KquVA6CTcWY1M7d2r3Yu6EovB43gM=;
	h=To:Subject:From:Date:From;
	b=Zpt8c9I6pE8z1FBbjnFE1h58wp8Fv4Y4ZnU4i+lIxlKp56h2pQlfqEcUyrEbAq4nB
	 8j0nb7r3dVKxZY0739504sos05gnWmCgVuOg4CeYo4nMvMFSZZbjI8L23j4uTWDB39
	 ErhaQQC6jqdbmZFojzAtUvhaNw8Fxz5bpdK4ylczyN1x5Lr1w8AQ2Dc74HBkrDumEq
	 R/kGrhUycIktK8Y3uRw8Ki7RaqcQPdQRnAxW739QXAOHx7S3ZToYjj3XeCqWMT93fr
	 /y/0AQ8v1acsz1TpbrQtUAjJ4ozYPpoizsN9o+buX7bcRx7PAKKf1Mzw33YkRgz11I
	 uU+Y9uVMJjIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C95C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355682280.16084.9225511839465369939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bbe5ecb82c2371aed64d089c81237029a4680e053d859dc6c9de88063abd7e
Date: Fri, 19 Apr 2024 20:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713556822
