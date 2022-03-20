Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E525EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647818784;
	h=To:Subject:From:Message-Id:Date;
	bh=k058whF2jOw7LcPnYTss3y85P/YEtDCZKuKA9Fg6/rg=;
	b=lZ1zmhFS9rSMEq/GqK7p6X7FNoRe9nFtuOhcW5zQx63Y0vbkQC5TlIZxU9+qCVn3
	ARFaPZir1xdusZVCVQ01Z28MKGuuwxfgPjvKIh3F1ufOrkI+1xw//VdyyjD21xiKuyK
	WS1WFM45lE0B3DzPrRAWRtrw9dU0lghOLncEil38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647818784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k058whF2jOw7LcPnYTss3y85P/YEtDCZKuKA9Fg6/rg=;
	b=WLkmDOr6vUoyBtXLVfZyX1VbF9PpgxQEWkKDHBBkRSwJ3RxLltfEyvfMNnWDOKir
	oNyV6JcRrQD1NtD7FR+J3YtH2QGmWsWfH8j6RbTEpNaxuZ6ukLR9jLzZxTTSgppJ8zr
	JK3/a4rS4OA+dKz6yYOrOCWjIXlwPQ40VLoE6vqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9a74018-158dbea8-525e-43bb-bf90-be580d60129b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01fda38b0e5a447eb108e17ea8ee4112417d7eff4d0b1fc682dfb46c1951885a
Date: Sun, 20 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647818784
