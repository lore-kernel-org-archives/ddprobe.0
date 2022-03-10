Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9905D18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646923284;
	h=To:Subject:From:Message-Id:Date;
	bh=LDzzb4uT+t9/erIaNuEv3gbLR2FmMoMINrytFU0uNFA=;
	b=TQjEPqClH9YQ0fpZxpaRVPX9g+U0ixNaDVmsxCX9jT45vMJQ9yIQjqo1xrUIFyFR
	RwQ7WzucewZQG9orTnoF+mzX1FqKPbomAJnE8nlfvSWNkK8FbSBXWDjUJBlnmYe9QMl
	IIlNGYjqAQi2J8z9+sJLc2VvJ0gVrQxPkjxc+R5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646923284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDzzb4uT+t9/erIaNuEv3gbLR2FmMoMINrytFU0uNFA=;
	b=X5XstVKkt/i7QxGt9CF3Dz+hGV4bGdWoPlSJ8mFK9BW1RkCRNCjk5N6OK2MEEAuH
	HOMAxtP8yGN7/G3lnFcSjcGx/2K1uWfqcAP9pk32xe4udvxBkS6EjmjjFJlGqHQiYHD
	jUoVSZQENAquPhK8gglTHImSUjzs9N50b7XQ0fzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f744700ff-c2649ab0-72bc-4d77-aa0c-32f484f50143-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e6bd9e869ac73a32f031886471e90ca87f13bf45225fc0f6f0414dbf48d4125
Date: Thu, 10 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646923284
