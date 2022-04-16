Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0595C33C0
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 21:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650146098;
	h=To:Subject:From:Message-Id:Date;
	bh=KQRqLSqY+d+YtqJQ+DdaMR53Y3le3Oj384iIS1A9OE8=;
	b=Pz42SzxQppSZ/jYgg4SerY7Vp0jgzMjL8y+zNA+DszM3FiWOS0lptRcwI8b5YwDn
	5u0IFJL1Avsz1rP0Wmt8GF4EMZCutgyUp0UwQ61ggZYbdpn6+zlcl5SBh2aFglY5wbY
	2RVFqfpvpti5xehaJcoyVKPjWdSr/o2QhWfptISU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650146098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQRqLSqY+d+YtqJQ+DdaMR53Y3le3Oj384iIS1A9OE8=;
	b=Od4z4Qcow3TW4MO+aZ4KpUn0bTFbe+7gm+OokbvcZ6hfQ4G5o6TyGWAglJAFwuYs
	Vk44cqykcdZj9g/Sra91ROoe56SQoXb4SP/1NwxSxvyFgKy7PiB0apjiR2WdSc3jjls
	Bh2TxyowdxZ2ECb+YtdZqSWZUH2wRmXmimArSOAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180345f3c89-5e195c35-101b-440b-9112-c1b9d01766eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df113a3875904d44735c901201c09199763602849ccb6d3297f3112099ad5df3
Date: Sat, 16 Apr 2022 21:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650146098
