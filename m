Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168BB275AF0
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760083194; cv=none; b=UvUspYf1vlwkpQpKIXM3ObQqzP7t4QfiK+p3rQGseuhJZ1I0f6ZeYEprLoIA/SuXFhh+Q5jMC8js4f7D5zQU3euKGwmHzFbAdrm6txEva733d8AaqjQLDG8KcAfzNSm3mJVa+KxO9e0W4Mhu4/PZP3aU9zJ1PfW6b9axBsntlbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760083194; c=relaxed/simple;
	bh=HiziBPvhRRRCWEbN+EOzbfmhDkmv/uGGzc/P5kGXI7E=;
	h=To:Subject:From:Message-Id:Date; b=oF1FHxxh08cNEIMHAN31DhsosJy+O1YvsROfFdwKTlnVUpBesDy7uxx86WDxqtxfTtQie7YxhGhwsHHzNI9nz/kgDT6ESo1+J3EeUgJY5GJNmBxLj+7MLFBLrHCq7/+tXah+AhBu0DjISpbYZC5iDXL1NJn+M54VNNlzeyg0b6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6vjrEaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6vjrEaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF81C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760083193;
	bh=HiziBPvhRRRCWEbN+EOzbfmhDkmv/uGGzc/P5kGXI7E=;
	h=To:Subject:From:Date:From;
	b=H6vjrEaJD48j1/qvP/7Hllprb4/t92DItt3k6ObC86oI5QI+X7C7xSGPdkfKJIAbu
	 6b+RVWR9NLwG7sKnwWmPtp0xhnnWItbtNCNHolPs+66V+TWwG2CXuAAPNgcfxc9c+M
	 C1c8kmQWBmopt9CqM0qsNIuHodN68R8NDfQMdZ0aN0vJe9DC8nNW5QKBI5kri9xoEK
	 PeBasxUuLcLzrnr62jQ07pPquDyJ1I4L7nrIbkXG+ovnfGkY/27ZppaX9p0uuJ1q9Q
	 HFRHdZIqRgakqOm/RTBg3SUCvdB/cqxesnfaIkcYIk4SFnIt+TQrGzsgOkRUkKpFAz
	 3MWrVlaLCrJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A9CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008319358.18984.998742484551826595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f92db69556284bfc0524cbf516149ea874311556b9a7723bb604d5a6ddcc64
Date: Fri, 10 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760083193
