Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E8D7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 17:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644687056;
	h=To:Subject:From:Message-Id:Date;
	bh=1b+7xm8W9D+xXCX4iwKbxxRgAe/UoUfvckEXM8AsPQ8=;
	b=lPCxC1Kn07SUHWW3SefwynQYHB5xWV98wObuD0RqvxDhzV/QkZ6kP7RfbBFEG0+D
	0su+P1RfTlZoiQDwhqQW7XiiU1uRbyORlI/5LFcrmTDpipJUJ7+nA4KGn4t9hGEhYjL
	GRg8FXyhiuGf6tU+Ddfd+DAmHfawzp1lwwZ+7Vrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644687056;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1b+7xm8W9D+xXCX4iwKbxxRgAe/UoUfvckEXM8AsPQ8=;
	b=aDUsTgLOJItyWMrbUr/3s2unqw2tG0h9VLtUDz4bCq8UAjRkrmNZRzwNMlSMJxgc
	ykBMD7U8CeAC+nKBxWZGg9Ak9xlG+dR5CrJyz0DeY6qs+PDkPadKCDbZrEADv01N2cd
	OfMtLXBtjHoPyAGf90CkX+T3MFvZFqeO9jAQuwtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeefcde6f-0d2acac9-41e7-4dff-aba3-7ee1b24efc07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c100e329f86a0c469a8bc89812d9914fa9d426e06ec040f4548203600fb02990
Date: Sat, 12 Feb 2022 17:30:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644687056
