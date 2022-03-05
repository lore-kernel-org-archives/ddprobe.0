Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBB07E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646448384;
	h=To:Subject:From:Message-Id:Date;
	bh=9sFiWShrxqYGYseMvh6nEZhfu1NvczncPG2vVBydfSE=;
	b=OPFu7q5iHX3fR21Xcd93g6qCkoeR0oAk9ukWetF6HjedV47y7u2rf4X1AZb2rjDf
	BS+bDz3EazKkYP0wmxzpdLWvlSgyfyLF9RBWbKk2PVjycXBz1vdYAnSPGYulSyIRUKb
	YOuplvbETb7dUOmb/WwwQCdFZkvVu5JAw2q3g+x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646448384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9sFiWShrxqYGYseMvh6nEZhfu1NvczncPG2vVBydfSE=;
	b=L/H3AXtsxpoZH7DA6dSGxs3O29wHDTXLUSRWqL848dRpM/NA1aM/yKRY1Tq8m1/2
	/WLADR3x/KBAqz01GHhjcImNt9UQbJ3gZ7eYOXxYQQ+mOlrA6rYdolcm1jTcGjY2WlK
	/Jl7vLJyl7gDvmE6etivfkgnAQ0kotfmuJlaNhRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57f89b02-f9c4ecb2-7e8f-4c4d-a21c-4cf38146e2e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c206c2235e3584061d11f59a2fdd20a47c8816a040d8350836b4970c0dbea2b4
Date: Sat, 5 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646448384
