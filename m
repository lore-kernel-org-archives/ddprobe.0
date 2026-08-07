Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BB3383981
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786132834; cv=none; b=Ch1L24HYCFkV7aOIkTV8RwbGcxRlnvIAEsKt/OZGWeZFcNSfq9KZyjUHJH402vacX6s7ONOyJSdY9djNR/dtlI5np1PL+CIgBZog9nwYKS7/0ZTM0JqaLA92NRtkoo692qcuFYIeTQVpJ6hJdtdZ9N+CPKB7ULT12Y2x2Qf7y24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786132834; c=relaxed/simple;
	bh=qhvfJfq1/EhHjtkPDEeHEJ9fY2Nz2iNW4YEaMzixUFU=;
	h=To:Subject:From:Message-Id:Date; b=Cn+BeBj/SG7ZGbEHXoNxtQGA8+KVoa/Kg9oJmQdBCo7qzDhziDeUtQaggm8+YnIaIYE0FHKZkFEpLh+w4cmXOO5fL/zWJQiPuFVmVGmNgNDZtN3Boinvn1CxsnmHymje5IjFZOUg5CaYQVdFSHMkq16MI015/zdixreMTNSq80s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOYQE9cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOYQE9cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17C6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786132833;
	bh=qhvfJfq1/EhHjtkPDEeHEJ9fY2Nz2iNW4YEaMzixUFU=;
	h=To:Subject:From:Date:From;
	b=FOYQE9cXZknZUS2YYHqDU7PZ6mlWpJbQt000ojSasdb3mVmj8A2s/ymcAbAUSFNYu
	 RPaMI3TbRl3P3SrbrN1bdtMdUr/hzRMe3t2nmVz9WzcwHZdPGFG38kOFh8QyZX7+O1
	 3ZWTsPkjheOVQ+WovyGCIICII/f6V2Q+EUU7Cocv6iHdzT7CVrShPDrN89F35dP6Oa
	 6T+a0077UIoiqVL9Sblot2+v5Vxr3QNohHOxC/ko+nVOuMrpS8FX+co5ZY/2Ifc8G2
	 x7arrOhFbUFoHD+LZxikk/BJ0g79H4AvABgIGtGxK42JhPxih2oBqF7nfGY8n6MkYr
	 g4/FES0RyJx8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A7C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613283369.3633.1636921494675680560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb2f7d85d20177962904ccad2d9987954996f86ef9b81b565366cbae9e8e9ae
Date: Fri, 07 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786132833
