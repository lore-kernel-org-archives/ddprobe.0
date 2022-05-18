Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EEA7A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 12:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652878259;
	h=To:Subject:From:Message-Id:Date;
	bh=OSOx+mpQm0imCyXrTwOBt0R7dxK5PjcXhBApp6whd3U=;
	b=ZKRd0QDYalM++C3D7LIR21o3FAj96lrSFx4+ExFdtYXryvvc/ymsubmJ2ynwUTa3
	HkfbV7Tk+84bV4JX/EvVYN06Bh9vYJ59NOxYrBtJbMXDKBjenZmyDfpdxSGWfG0uiV6
	l5EhA6jqF55l0K4mivuGX4LyU1YhHzC6hq+jU28U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652878259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OSOx+mpQm0imCyXrTwOBt0R7dxK5PjcXhBApp6whd3U=;
	b=BznsfxwtvaRLLsWJtvp7yjXHNfyRUrUBbjlpqSF9EDwbzHvqgkidMffgx4EGlUuG
	K83neO01wOm9VXWp2wL0zxid1BAzh3xctjD3sEyzb9uZC4SUf4fbyZPff5xra2l+uf/
	wwc6bwLpWVhZdtMOCO+67RFcGhoa+Mce/er/Mc4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d738b44e-76638d7e-945c-4a41-ac2c-e5e492aeee78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 333b0e50fbd949f833fc746bda6d5fbe75b10d33d8767a6fc1555ca5825a8366
Date: Wed, 18 May 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652878259
