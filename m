Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1286833C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655486639;
	h=To:Subject:From:Message-Id:Date;
	bh=7PedOBXspMvax91qHUMTwr+LFq64HGQrB/gnRjWB2BI=;
	b=S7Kxgqcw1FyLJGL9uBYXw9cQueM70LYiaTgIBnzWloCwP0kOKBE9o+p46ZFG7EMU
	zPMvHG4SUW8Cy/VrNJt+c6UD+xI9p2BKnv75jfEu7m0iOU3Lu5m4jBI1deLgXURMhKI
	LvVW+63RLMylEihmCU3NIpFKLrYigNJKKMqmdFmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655486639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7PedOBXspMvax91qHUMTwr+LFq64HGQrB/gnRjWB2BI=;
	b=aQ0rJAdA4NzItzR6zzDG7JPZBq4tVbdfmM7JN87wiHEw+eQCjS3+lSdJAVsJ6dy0
	Jw9YyiFMSwYiIAAuXgInlN074Ukrzx6fQ+Tl1U7y+pkJXzqzhkamhH9w3bDPM44bVLU
	xMOwWoazYIWDniLSpw1P0mjq/oNCL+p2A0IHHEto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172b16c83-309907ad-b1eb-4191-9047-12bb7b006674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9073e0d84e7bac63be074944df5a00f1e563083f9aeeb0a17ba024a04a71ffae
Date: Fri, 17 Jun 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655486639
