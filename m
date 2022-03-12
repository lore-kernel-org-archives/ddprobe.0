Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AD8620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647061585;
	h=To:Subject:From:Message-Id:Date;
	bh=Hu8ApWVodovrFtyNA+tG25L6NtOvvVhvmQn1N5MGKMw=;
	b=KhM4/LZZLlmkgvM6GvSnKDnp9PdSlMCI5imDbX9AdqCLJkLpefcttk7o4Ma4L5Id
	ohff6pCiLjywK1+2L4OcZouAkKVWjLhXMKd0W2wg7P46MFY/huw3d2SSb6Y+zWmMeSF
	+n/DzSBfRk9jK4qOZX7+eTv5ugU6Wcd+S0MuKyK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647061585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hu8ApWVodovrFtyNA+tG25L6NtOvvVhvmQn1N5MGKMw=;
	b=R5lZdlLVT18zjo4TsslmX2pqX7dHv1/1L0HeYs/A1iafRV0LY3VOT7CwcleD+V7E
	QkwINE4ZYy/c8ZXIkCynnkRpu5HB+OFJ3UNHnTFHwdE6KslNbM8SjuQoJEljWqtw7/D
	C5eQYqCE8rdBA/KnXDNlVYU0OzOmgsdsb6iHfsDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c854b79-44171977-b15f-4dee-8cc6-5ae1e5cc37e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79550d1b5c262636bb823e99b40d615280502930862093dc5f4ecac710f78e0a
Date: Sat, 12 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647061584
