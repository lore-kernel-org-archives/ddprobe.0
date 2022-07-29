Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1777A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659071452;
	h=To:Subject:From:Message-Id:Date;
	bh=2wjlDSzclGhO8Z5YH3IPPnV6+hiHnYTXWen/WW6EpCE=;
	b=SW8RU1l6YR8kqYaae3osBAZA8Li7CuhFlYncRpp+c27FPdW/1a8zh6MCAmXtpJ4M
	8DRaYRMj0O8zvtv1jzOcEyitYTcKqqzOgDNKZLKqP8bXNzAkHQ/dOHBPQ4ZeYx5XvQa
	PLZJYlOjlx8VKtiuFSZfVwfdzxUdhmFF1RcC77dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659071452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2wjlDSzclGhO8Z5YH3IPPnV6+hiHnYTXWen/WW6EpCE=;
	b=i8R375BUQdMYGE5nOZW64bQQF24GQDPQGc2mJT+NZp3PYyXd7957VgPfc4w4RFl8
	RCUz1rdzph8K4qVwxAR1oeQRRmUTFYwY4+Qnh1+g1eDwZpOEraf4TqA5flJzwhCf/v/
	OVUIIzfI1UXizUi06f4g4CICGeubmpwri3GI1338=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182485d557f-1fb7fbcd-3c58-4232-9f59-48ca869bd3ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab3b484a61a69bc913cfeec5712ce5b5a8e9bd654abedc733e279bfb6de07372
Date: Fri, 29 Jul 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659071452
