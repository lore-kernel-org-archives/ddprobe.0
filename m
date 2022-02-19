Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96B45383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645272085;
	h=To:Subject:From:Message-Id:Date;
	bh=labJahM3L+qKlxNzqU9zHhA15vbKZIfVFXNV9qRrhRw=;
	b=X7PSOQ8gno9jFMTbCjhwhFoIUcIJgwcwY5scdipXnw8aX3XaBHh2Df4qadGfciKj
	2OcRr3JLTh5A2T+UWv8glnU4NlBqgXYsbeRf3WBJAKJrM0Y+CMHcxlaflr1TXyE75gg
	eK1ueLGYSRFSsagOwZlfw9Jp6zU3r5ESAFTq8l64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645272085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=labJahM3L+qKlxNzqU9zHhA15vbKZIfVFXNV9qRrhRw=;
	b=Xc6DHGw9Oaq/D6vPFFcqUj4ndujyLAwQQrT+SwIinZJcuEL6ns/tBRISAR4+yczt
	3X1yn7plnOlvh19nuurUl4+RuTo7Pf5K46AHycwfanvPolRvvD81vMGlsY9aZxgGAJa
	EnqoyK6JdX8jcR40z9JxXUCzZtqFEYG10XkNjqw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11dbb0fd-c178bbb4-4e84-4c57-b5ce-0808add3b70a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dd4fee29288a4705d917351176d37abdafd4d47cb76b6de69e4b1a0e9d1fedd
Date: Sat, 19 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645272084
