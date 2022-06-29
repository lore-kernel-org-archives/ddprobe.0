Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5313E3D6C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656519412;
	h=To:Subject:From:Message-Id:Date;
	bh=olVrpK4mDH+ybvNvS+4f9rfkj14cVrib/h9abJLrC5Q=;
	b=cg6ePcNxSwhLC/EqhhtHD+AArE6grnvKEgy5x2tpWEmwtTW+krLMD6oKAC1aJiH9
	tMVb+riOMdX6rQrFYpwtd//cpoIz0JLEeAaLAgf5CXxcf0KThzsOqZzX1ZxOMrgqURB
	IuQ707ERiEoJDVyqapRGJdDMkEGjA4j9jri3YcwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656519412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=olVrpK4mDH+ybvNvS+4f9rfkj14cVrib/h9abJLrC5Q=;
	b=Br+PUbPS4hwI2LTgt5718GTQbGO0LYe/kwKbHHXLNOe1WjIkGfBsNmd4XFz57Rwr
	tjIke3cWbTprFCdRq6hJzQL0YX3e227ehArZXjhnjJsGpHm58MvqBh//S9yekjmnqOm
	xMkR+vOA6SHl0msamd2iv45i+533/y7TWIEvJCF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0404a56-aad9a533-3a96-4039-9fb4-c00e4ccff1c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 195ab8a09ccf340d0abeae8c1577fdd0364373e915d89960c257c0c27ecaf479
Date: Wed, 29 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656519412
