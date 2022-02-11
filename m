Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4A37D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 20:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644611920;
	h=To:Subject:From:Message-Id:Date;
	bh=keuCWFVAqQQGNUSMADTW3d4b+ips4Hg1/W5nomIbDsU=;
	b=VS/pbX6SE0KMagyjH/JdM5+zuc/VKTKltqdKfucpkGGWDfmDtowmykqrxNxgpSaS
	esJ/gHs2v0YoeN963Uk3hCIlrBore9NHvDH3dOYJU5p9GEWMElHmYFQz+H4QxYOr1kG
	YQ+BmCi2/pAn75kfoovojTg9Pmb0h5Ru+MzdtsWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644611920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keuCWFVAqQQGNUSMADTW3d4b+ips4Hg1/W5nomIbDsU=;
	b=NygzHy5PBF36lH8EIdYOrXJqsi4DZLzn/kh/p0B7eXpr4rlRQi/+A9L8VJGyyAJz
	PEdYfOP2xSuNWGaSFIDmhEfj7POw8v2NLO1C+CxpfAscFKrYfqwj1POAqX5TeOJ8kq0
	R3g7iJYqP9HjO+wTBUPEO+IIBInHaoEFfO3NoVz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eea826182-c8a38b7b-5fd5-44b7-8ad1-7abbc6824c01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1621ed2413e826ac2d2229408e1fd7baad821f81f2853a500c961f6e288624c
Date: Fri, 11 Feb 2022 20:38:40 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644611920
