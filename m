Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC5010FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo2xsliZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829B7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697866696;
	bh=hEenRNae618O9Y5rBlGK9oWaI0eqsXugBXTu92EnNdM=;
	h=To:Subject:From:Date:From;
	b=Bo2xsliZPFSPn+vDKbj18YoYVpahbV+Yy+8YpHWiKZjEBZnvdOQxHFVmPdahpDxo/
	 RDzRCfFx4CSVrUTRGZrb8Jnabn2jjFaFLCIZ4sJ7JjqCKIb/tJwFlCQOD0Du3Y0xm/
	 wXz1XSQSeT4upKi3MwRWcyrKGVYPvkJ4UaRC0xhO66/CovlzfrUbJ3OVyWvx+uEFwQ
	 MjPqtMqz0LEBC0Lrfva/Kt59UhQ79TqmQJ9XWD5fFHQeH1YtzX3A10DgHMVHAqX54j
	 X/3I/chtIdT+4q3dsX8urfNx/i3aaqeA5ESOZpTDktfoRDHIaVl1smVqr5Ug9Tjjyy
	 MY+qVDcCeS8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BC6C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786669638.11647.14679599502407893617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b8a43279ad4f6bf32aeb0f440f93f7cca8d81f0cc96330af513136930fc416
Date: Sat, 21 Oct 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697866696
