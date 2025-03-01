Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAFF1C6F55
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740869334; cv=none; b=K0v5byMJK2umnRoOVlvDKa7WRD9M/V7MF+0gGdVarBF1nnr+HB0RtrSIp75KipkOPoYJl5aa2ZA7E2DTJyDfZCVS/KT0v2loZ2CJYIepJKBHxElblLu5aXrjcAPl22CNuf0nl9n2Y0MrXeP3h8w5f3VZnYBhQcVt9xOqh/eM5d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740869334; c=relaxed/simple;
	bh=xw30o/e/BilOi6qpGz2PHXcZwIqMBiCE5/8FsAFGKYg=;
	h=To:Subject:From:Message-Id:Date; b=ExaEQuzDjr5otEc9pi31e5KIec7HukOY/lZ/dkYcxCKBGScWbwaZ4zIJ3Yl9NHtiP10zRw89Bx96PtEXqwAst5qDPqyhXkkEwj671KIt3UEQJHyrr9uhUOriGfsaxgpOYThr2QOoOUzGqEocjFzUHBDn2wQ8vXDTu15GCM8BVvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT7efdI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT7efdI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A18C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740869333;
	bh=xw30o/e/BilOi6qpGz2PHXcZwIqMBiCE5/8FsAFGKYg=;
	h=To:Subject:From:Date:From;
	b=JT7efdI25XcOywtoZjdA7w324yV1hqGzXEvyGSAk11smtsIJZG6dFhQZrr6eqVSCI
	 QFWP3XL+IKMWuKZytUSxpFNXDmYCwDceXzwamNBsKGNRYPW6zVs2/ZPLPt06IvC9Cp
	 /NY0HsltUTym6tDi/zzzn8CS/5VdcbCIh+x0TtSFhyWo6OzC6TN4n5j0Pe4006Vlt8
	 ybW2RHP3s/wBrV08BgQeXSnI1eufQIObhBwFKqQMfAdU04SzeqMrd8uNVyhD4/Ops3
	 lLo0jiasS3W9XNLbpUPFSv8y1Xs67OnKIhcGNXD44kShy14jq1HUFTK/Jh+oqgsahN
	 b5Y6g35R7+iUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978EEC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086933359.28295.1074482671678286377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2120021f200c0d66221abd63aed539eb13260736f67995dbb4551a3203c4c415
Date: Sat, 01 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740869333
