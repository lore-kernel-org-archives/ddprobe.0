Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72DE362
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645519585;
	h=To:Subject:From:Message-Id:Date;
	bh=fiCYyFIF17eJfamPyAZwv4INlUwWT0uJSZ3H/vToHnc=;
	b=hYCAtKbA5PsooxCuVCr5J/Lu8YSneOYTIMlSaAylYSTGsjifozzhRkUFQciJgsbT
	EVXNHaNF5GR+LnRzM8vOWZdYb3wkL6UnfwlmhXUyIFqyIf+iWjqMP+b/hvuC3SCieE4
	LbvNDJd6CrwUVhqAZU7nnLqY9g3cYUR0scr7S3zY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645519585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fiCYyFIF17eJfamPyAZwv4INlUwWT0uJSZ3H/vToHnc=;
	b=T70WKszsN2lumnhS6s0m306dmTQHb0boBuqopcWtSJlq0caoWieTxDC+lU+sODVu
	BoJPIv7XepbohWw8KaXF3q8v+GIV2odMP3AIWySLXcXVdcmfXGtEqOVmUew59eSDZli
	8Xf/13Sx5EZxsp5Qm3r3kNYmRUd3s3s/OgEHnG1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f209c3e2f-406ced05-b8ab-427f-9849-737a75e546ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0642d7c2882cf9379dbda631c8978eaca0bd93bd158f88f1eca0b8199fb79a63
Date: Tue, 22 Feb 2022 08:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645519584
