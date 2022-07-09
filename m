Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0F47A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657345612;
	h=To:Subject:From:Message-Id:Date;
	bh=3FroE4pQVbKjhV7Sy949d8tRFkxqUdiT3zFXG9zd92A=;
	b=Y49tDEyr4yzPyebz76gBag/w5DqDgD4Dgdql0q6I/rRa7ybKsZ4Wr3INpBx9rpu/
	jPudVBfjgsJbHhon+kJkWDDvlP0Ja0vk2HdHlGmzs9cJ3TNXoRCiF5IwqnwM6jNk3dJ
	KqTy6s5xQYH+WNgG7QtvI8p2OW9NDX7OckSwx6ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657345612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3FroE4pQVbKjhV7Sy949d8tRFkxqUdiT3zFXG9zd92A=;
	b=WgnRurkSiEG6Oq9aEVMwbVk1ulOkqQQK9o09HtI+TDL+Pa+XRfeihteUvDXVgj8o
	JKlOR7AXltBlsEQuLHGmavZzho9RaXu4nYfTYYQXzef8asowBFmQDnn9siakjJD49wd
	JnAQ7wnRl+AJuNYr+9dro4rr+ROMmwntieFigY0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e17f1a38-94a468d2-51af-4bbf-a5a1-d2d27482cfcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28be64291ab47ae0ac05a880e4fb7815940169d1896466a1f441a8e6007b90fc
Date: Sat, 9 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657345612
