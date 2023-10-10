Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6172C171DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrYxi9ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB26AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696933628;
	bh=sBlBmG8izJYt4i8S9BBfDMvcOqDI7Nog2IRRd+oJrfc=;
	h=To:Subject:From:Date:From;
	b=VrYxi9ikedOY+hX8UpGxPh8onBSGZeaehrrR0XMWu4c+GxRzRbxWDkffnnIlomFCX
	 Qz4xgjJZiskvYvxuWOdVMU2fcRwLcWGUlwDKbJ3FB5U5Fi7C7JcuJuEyTwV3VQ5cxN
	 S5tp+0ffDLEJiLBQQlOFtfWI9TiI8J5h3JgGoi0DxdcqD8UaCE+ohJ6X8tVwlbzZ7l
	 6mB7ipQURNDS/wIg5jMKS3xywNSdDlWmVwbZxl40tu/RE4C37Cu7LQAFHPzSG34XYW
	 MPv0FvQclQXuHqF++eaF+bFPqlLJztiYz1+GL8f8aADqovaiLCOT8Gn7dYKsLIr+qy
	 60BQR83NbyQIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD09CD80A1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169693362876.29089.66839649492282833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ea4f3b289516e9fc8063ad25d31cc5c50f2f30f7c845242193969d5b6e10d2
Date: Tue, 10 Oct 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696933628
