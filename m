Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749CE44C94
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718941943; cv=none; b=H+8M8CsUKZwBPjGiQt8vEZFgEMz/RI5Vd4qUNxItbb8F4mHa2QGTP60SSCNjCp2uCoi8jFIoVxDlGBOzjkX4z8fRJxJ0LvD3L0vrMJuISrGXX4AkWYuv3is9PxECmEsdGVHiHknwA/BAM0vwqF1IYD96ZmLc/rswnvbQQrajCPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718941943; c=relaxed/simple;
	bh=+OwOvDIBB8BUjHvviN9NGoo7q4bEmr0kYvDAA/PElqY=;
	h=To:Subject:From:Message-Id:Date; b=u6+ANFr9ml8Jq9xeX8SAdHJ3Th7gznWbXZFHRhaIaOdOtq1qXjEiIlKIaiUioYi4nkmvF+nchNeE/Mh6NgHDp8uKhDkFh+fMRRWPMDGHHK6rQjB8Mn5vkvIJPTg3tbNxDbDhzy8DudhoPX2WXiLB8zDEiQlRB8mjTcBi33+X3Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okfUM2/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okfUM2/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECEB5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718941943;
	bh=+OwOvDIBB8BUjHvviN9NGoo7q4bEmr0kYvDAA/PElqY=;
	h=To:Subject:From:Date:From;
	b=okfUM2/oght6r4F349DT0fxFIRzmDlHV273KVFPuBsttQbmTgFsz8UZPAaq1b5lDm
	 5VVZxzSuPXW7LbevhxYfjZxlYg4+MU+zZRtwzaJ+lEGvO0MAFUKMjkdjxdaIfwQknM
	 xyHaPYvQFuKUSHJYZPkE7GhUYJvRnZMSVqxk/CvJuu/QV10WUaevEcJWfk7Inhnx7W
	 gq+/VNAQeRgvYYC6Pt9poS5/vMOFB7uM5tqe6p2wXiDiv0XZ57PJ6S5cGqP6x5irb1
	 Qlr9zAIc87rXiHC0/+gKzis7Qkc5L7LIKTLXrPI3FcIQyyIOgBNJzVIY1e/FoQmj9D
	 XDjFweYE4QL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1488C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894194277.28240.16176363306439264355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef273a95066b56e26d97e246cfa2473df72f477ee4df36c359822754842624a0
Date: Fri, 21 Jun 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718941942
