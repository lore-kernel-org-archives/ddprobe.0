Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1636E17E9
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 07:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648451938;
	h=To:Subject:From:Message-Id:Date;
	bh=qrCen36zitqsUgbdCVOMqmpTjKYSm/dYDgTwDCjDc8c=;
	b=CECv7kvS7kQ2ZuZLiy50KkxVGzOFTRZtgHqN/DoS+TSj5YPKDS4RY13P6A66BORw
	/rcKOpm7m8bfhVzo4t2QbJYKJ3TV/4JuqYmLQA1fh34QU3wV63nGT79oqhB3/aohloW
	cUfcDkKLganOqNUYjzL0qu3QeqvZtu19q+0bR9FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648451938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qrCen36zitqsUgbdCVOMqmpTjKYSm/dYDgTwDCjDc8c=;
	b=WESqd0XMDV0dY67qprw0xSpPBAAGE+2j/Ns0PMcf938/Xh+VNKIqiyWIJQ4OjHAO
	DzQ0Y4eYUIlmP86I/H/DlE6BRunctWKzqzpkiziL63Uh7BmKDZ7RS3AIU8XecOTFe+9
	9Ob+GgCOzyuOwcmaxGlDqeCVxhockErEPBYWMKsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf6467dd-44f9e97f-d699-4501-b494-3c65f616507a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bae79c001eab850f8d3e8f5c5014ecd60f4616d2c377e50e65efaaf726788f22
Date: Mon, 28 Mar 2022 07:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648451938
