Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD692F5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645555585;
	h=To:Subject:From:Message-Id:Date;
	bh=XfMt0/EyK8R4MHEXhPCvdwbH+auKW1fLiV+rTlrc8f8=;
	b=k9K8+FHZHCOHoEfsd0ZB7ujQJUU4C5kCGGevxWuflVE/ktXa+QsjEhNn5wdz5xck
	GH8GWJkoh3Oe7XoQ71dOTTnvuscNcxQJeFZuZsXQ33RZRWxagW4SeNeuEuzpJHhBce7
	deRCsqz0uU1bwXCCEuW0V4qA7TKzgEs2YEtQ3uYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645555585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XfMt0/EyK8R4MHEXhPCvdwbH+auKW1fLiV+rTlrc8f8=;
	b=Q9bOIoA5tb+wWLwnnXLfrhxp/NVDsBzuz7FwuvD85m0PsVGhLpA/iy+VxYkilVHo
	TvkZSZ+S3N0PqOo+wOWb379EJYPcf8EHRKgnjePewha2/1N2koUx8vmkCCYvk1/x5jP
	O9l3JQrQ5vkFcYEJ9SYmXtP4JeLyM/4DTcNLjKbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22c18f96-82086225-a1a6-4446-9d5f-1d70e7acc7dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed56539fd961ce7dc03f6f6e71a8b09fa47050e78d2b34d338336460759e861c
Date: Tue, 22 Feb 2022 18:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645555584
