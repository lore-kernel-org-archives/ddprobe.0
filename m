Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054FC80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644870385;
	h=To:Subject:From:Message-Id:Date;
	bh=8HOjXe0XXIiuMZMjhGuPHN7FrAO4shC8tSymG+CYZxM=;
	b=fuo5tXYEakyxsnJvrIst9prjbQn4pbxcCvkPEQ2kc8UlJuwvBxsO8+o8jXUB61q6
	KpGlxyE9Sh+j9gwoxc99QkZ5DlsBzTxowPXflQUT8Z+IQ/0T3NfK9WE43+ytgdGzgSY
	vQdTMpaJVj3IJL9nz7h36sXGyr0RIPYOIyM/78/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644870385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8HOjXe0XXIiuMZMjhGuPHN7FrAO4shC8tSymG+CYZxM=;
	b=Z8zZKGJRDfri2qy8Jrc4Fqtd79RP4FBcGd1VYATC3MtxBRYpoYH0vopv/1j/M/kI
	XL2zzxQja//z0m89SIrIlc92UVlg9x27NjfNxCNE6bRP+jFWvIHGlg0ITwkUH/e+Oxw
	00Cg18FEWevgZg/vOesx3NfxHKSbb8qoeUWFWx1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9ea3c80-5b052bc5-49a8-46e7-bedf-9bf1a4b87da5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b792a4ad8336ddaf6e6f114ab0bef32278d69818e6591aedbccdd77060099bac
Date: Mon, 14 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644870384
