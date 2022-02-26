Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789738EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645870884;
	h=To:Subject:From:Message-Id:Date;
	bh=IHGFQDontzxLqsTaq1LO1DpeHc7C0lxY45Qn1mXwM0Y=;
	b=dkgZRyuwyT3x3lSNEP0At4onfwClt8LjeEhJv7lvNsIAgkcA3UfxbDI1rbc1pm+6
	6bRR5Es0heCuH9sonF6TscbXmXI8zU+HbZNpYgySRdhwnDwyyYgGd9KloJT0hs6NPnK
	4a/Zooiayhh4NvQQ+Hzp/fg+lWm0oplZvykGmrms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645870884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IHGFQDontzxLqsTaq1LO1DpeHc7C0lxY45Qn1mXwM0Y=;
	b=GSvCscZ0dF45YEg3Z34LHU8RZif8lwXM44TqRf+3PLi3BU4nDOUmDkKNGBMvxFlc
	3p38Q8a/VjsMIk45Tq8ISe+yEnOCrUTIgA8q8Sasl5K9AO/NNn5CimOZIk6PEJbYKbr
	n+raNPWQUMe235rjBgEB57Zpf6QoSf2jUZM5+VaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f358ca79c-b80757f4-3a49-403f-a8d8-e6dbcb37890f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6913ee79f1192ae4eeaa81bda013aa51f0688dc7963398844a9e6e6390c4688
Date: Sat, 26 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645870884
