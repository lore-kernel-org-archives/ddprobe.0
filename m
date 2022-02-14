Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46500A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867544;
	h=To:Subject:From:Message-Id:Date;
	bh=t1gRr3B6XVgRU3XEhoM6HDM8dYn9P5lVDXN3X8Visq4=;
	b=dgLHLbS6Rw5pYcHAV45p6aAmkjL86D0tgzJsrUMwY6EkWtEHuIj7yvT+3v26QQQV
	W/IfM+4gF0C/yF6uKEhVQaHgc7cEd9iYZ0MHe6hYChR/hZg+54wyPOXWlfv5G5mbN2R
	GB5Uxf1wopm1PjtAWMp/HdIoG7ygHlrmdtgBDiQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867544;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t1gRr3B6XVgRU3XEhoM6HDM8dYn9P5lVDXN3X8Visq4=;
	b=IsPOvPLm6n6YtlOjNUEudm9kzcREvGsKboSgs9bXv9UwrlMdUf8uu8CSZmPsY9JA
	WPEoFYtOKArrkG0E/OEoQbomQe/sKEgpQS74oXL4JZTD9AR8wy54452fITaGodOPfet
	wK1kw8v7m4OKhWY4YXfNv08pw/iLDht3TMIxwN50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bee6c4-01220711-33dd-4aae-8a87-5d6e8e8516bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e91b2f6601fae451474901fe5d184c406d280880b5dcd53b479743d47896caea
Date: Mon, 14 Feb 2022 19:39:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867544
