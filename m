Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9691C6136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646255484;
	h=To:Subject:From:Message-Id:Date;
	bh=mmoSjRE/qubWPmmNQnN0ZgMyRM0frCg2qxSkMpaJ2bc=;
	b=clx1EtZxNjD8LWQErP/W3ep5LreOnsTQf0auNukFahnd/sYlO8WPZLgkbIAlT+Hi
	yjcBXTgioNnZtD3VKLdeSZ2lzeoY0/cZg8BsdO6sK8d8SxD3w/nYvZme292pyXBgj6f
	SlfHmUTTZyC9r9YRQLiOVfKyVbidRj72yEv0T70Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646255484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mmoSjRE/qubWPmmNQnN0ZgMyRM0frCg2qxSkMpaJ2bc=;
	b=A5YBASOheeIgOX2eNQUBeiSVehDlDQT2GB4wO+rhk0XDNIdWNYMQxlLT5vUY/Oxo
	UQWGzRXTLw0OoHiTtXyJa/9G1+oWjyrrY0bUJZoq2f05XcZBNvJS2GoEHL1jTO5cM3G
	+V+MiD+JvJtYl2G8as/mxN5K59z889XMV0y45FLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c792f8b-4e68493a-3930-44d8-be01-14846236a2b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb4881165f97d39a23c35e0b42abbf7b4a02af1acc66dc30bf3e536e7d152cc9
Date: Wed, 2 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646255484
