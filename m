Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB517B418
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767338634; cv=none; b=p5j13wj4K9Cb6ea0w1WBK4vjXOayDX446N/ifHRK8L4jDffKEUkWhgogkMBFuF1Nlqc7W5ttAN8ekAbu+BX2i1iLKiBJT5LkEt8ZXy7q0QPhWZYQsBTu2U1L8oFNtVGNU0xEdiwDdoq5kbE2dr7VTBVBLOfoBuJiGJj3raMjZvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767338634; c=relaxed/simple;
	bh=px6Bc3OPtwUN9WQn2kJ2seQ20S+cfdLmExvGy7oUw7A=;
	h=To:Subject:From:Message-Id:Date; b=tHxM4CDLkH2a1MLv1z/cg5MyxvHv896ITx1wnEd/gFjOLjoV86UD4SLYIcTDkid+mUR7k1OQqZpaCgWsXYex9vZ/HlTaDaPU3Z7Uqf3zImDyx6l/431/PMx6jAAziQXwu5hLxaYg3RmOZk7X8puIJSu9+Ioux5uuCgSJ5OBzIpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQvqCt3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQvqCt3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E61C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767338633;
	bh=px6Bc3OPtwUN9WQn2kJ2seQ20S+cfdLmExvGy7oUw7A=;
	h=To:Subject:From:Date:From;
	b=JQvqCt3hYI1mwOQZlbZd5WHhJjNahX2FKfRoXil3qcCSIomQMK+eznp4c2wG5SBUm
	 f81u1Ncbt2l56x+0Ec7lC60R+sj5kWk5A73m5/sF39pv33jLlIykSyRDfEwuV6VmIQ
	 PjXEqL4526vL8sYogIJ/Fmp6j6FZIFGfkwlBLfEZN2nAvHf8ju6wDvHBHOU/PQLZjL
	 k86WnhmYtzhIbTKOlDK9zemdogX/6uPimyyZLAJu6qrcsl5p7BdtYVFIalpiIIVXtg
	 hTrYpnUGRGsHx+5OfRIhN35C4ywKvLkYIgQ2ZMefMvOVqhn/2HGNXN/2N/ZImc2gwl
	 oyVj/aB3Xg1lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F921FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733863358.28149.843387105054613298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6657f9df3325bb43360f789913458282ff919df07bf75e5d098b95abc9bf735d
Date: Fri, 02 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767338633
