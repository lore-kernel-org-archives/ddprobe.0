Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D39A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867380;
	h=To:Subject:From:Message-Id:Date;
	bh=gnbH3q/k6j4OxNLH97ZFA/qlXLRT7DzhZseoTHsVND0=;
	b=fExKpiBmSXl1kAXM349qEEeq4FhdGuinIF8whu/arOIdkCuIHxtzJKZVXRScNKH6
	oh4baIkF4UodPjwmURvPsOOJHeaWstp47mw6wKK1r2jQOvA2FNO5UiaUx9VcJZNN+Vy
	qNNYBeKlbzIwGkZeR6JVPdghzllcapMt4+1uH71U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867380;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gnbH3q/k6j4OxNLH97ZFA/qlXLRT7DzhZseoTHsVND0=;
	b=bn3/qHvJcC8EZqKpXDaMy0Rw7qP7ZtOGb+w6hJJc9K1aYdRNFlHJAEtR6uNv62Y4
	9nlVgG039i50L7/7MInu8XF4mlEWCxfHvxr84WTtBv8uWxHfMSKvM3PPqowcHelOqjy
	+VqCchX9y0LuMEr/YBJLSfhGkvbXBamQh49FIe8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bc6239-3b20cce8-cb62-400e-8bfe-879836a652c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373b149cb089d64e5262819c4ed060f3b6c8d59cecc5a6cf24903a7116cdd10c
Date: Mon, 14 Feb 2022 19:36:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867379
