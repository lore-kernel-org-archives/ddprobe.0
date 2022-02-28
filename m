Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAFF7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646059284;
	h=To:Subject:From:Message-Id:Date;
	bh=JwM9bI9OVWv8RWG7eqmSvEtHWPUfYnThi62fIDMUI9o=;
	b=ZaTZzcIKsNEOz+GvFN7Torx30mrYfUFONPTY0wUYlQVcW5ZaUTjM98UOxk5qpA7z
	KYJFjh/aUkjxIFHMj9QB/WtWXlBfjM9KLl2D0MR0u2+JmWN1U8U3T5xpbBagmi9ZKxp
	CB8YdCYY2eoih+OmHPCtd6sAQGBjkM1EpdBSlCRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646059284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JwM9bI9OVWv8RWG7eqmSvEtHWPUfYnThi62fIDMUI9o=;
	b=f1bZr+VLha6amnVK5d494Or4Zd1eGmj6QcQKIo+Ene5rTKk8JZAsT5Qr1GeM83dp
	VX61uXeQBTS09TtUBi6VrhG40pWcB790v9Hq/USBHC0jCUo5e4dH9kbHvvjZ+a/IYRA
	WPgaNtCadvsZAzPKeyHX9utpZeJzWPe7Ym/oc9rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40c76926-b8a94b75-dd31-4414-b3fe-c9d90226a49a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89565d23d907f52f0dea07dddcbb1903bce4dad42df2835cba5e76fa92166e9
Date: Mon, 28 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646059284
