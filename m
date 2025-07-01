Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13450205AD7
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751348394; cv=none; b=l3qTpycGpUhINB5lX+42gOxFhW+yEjFyInTX7ie0mbPvVTqkuogwUSDShBkGmtSbK4VNNrhtZE3GITsPkYDS+n1yZxovdN0ZbeTrK3m2RZCBbIxWkNyOgP7eGBaJVLzQgp22w9CzLmLIHLDflWn37jCSMJiFVixuZqlrzAlM9NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751348394; c=relaxed/simple;
	bh=JBXreDRHYs3ei2ss8cRWaxKLVp1vU1oFTXPiLLnZFO8=;
	h=To:Subject:From:Message-Id:Date; b=YWDwAbpPiEkVRexkUryEYktrnRwO1G+Qbldi2x4Xym1OP0WCGSK/OX/+XHHHW2BuT6RtHdcYhoP2Dho2tSd/GyEhVUlQG9Mn5SXvqLSzddY5sUlrsO3nFW+SoDbc2EQyDwC7D0lj73hzu/xyrn7NDs8Z+PkEq/sLtSqu8cZ18rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKH0pPog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKH0pPog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E69C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751348393;
	bh=JBXreDRHYs3ei2ss8cRWaxKLVp1vU1oFTXPiLLnZFO8=;
	h=To:Subject:From:Date:From;
	b=vKH0pPogYM4EMNkMpKk1YYq3Ve2iyg+MLXHgPdwAbdOKchSVce0klh/1NfulVlwex
	 smVVLw+egLiQ7hGsabMKL+YXJ8LDOJosN9oHVjN9Xb28dIwDIgbIRcvWG0jGRxXopB
	 fCfvGwpb9Jvmhbc8TAYa8OB1ZEjluT1/wtsfZrVt8UkopoDRKkbATdXe4fEBoPo+PE
	 KZn7vmfFn6S7vfoqcqO82ZQ40rrIKCVbhp4Qwjl2jyfgjPAiDhbldIj2He4DH6Ex7I
	 2eTYHGIiUR7yxsnswdv68fgENMrutLUuXWffaoEvH+iMIHVHJTnCtwefI4v9+2UHV5
	 ekDC2+yZmc0qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D29C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134839359.13903.14444592367757976848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc93c8b340cc57a6ebd142f7ff426ed97d900aed80d43395bcd765ea43924abf
Date: Tue, 01 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751348393
