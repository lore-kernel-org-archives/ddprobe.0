Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE8E1385
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 11:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651231318;
	h=To:Subject:From:Message-Id:Date;
	bh=XGD0I7YifCuZWBF71QpwqKF0FJ6mvSZXnXBkrUgoEto=;
	b=fhOCu6NwoCiCydRIHwV2pMODCBlH6Q0x91bGHO4c6Jk2YOzwPhvK0RG5lXXKPFfH
	/Nn0CfyNwWqkRMA1/wn69NNcIY7Jv0JXUE33P3aj5IbuxNObYLbvditDMXFo1ZZLnMQ
	wlb2Vvh8oo7RiacKTJXiA3A4kisYxsjJksvJsgDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651231318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XGD0I7YifCuZWBF71QpwqKF0FJ6mvSZXnXBkrUgoEto=;
	b=RPHLLnu10lnQD6P27EknXPm9Mf3JlAyuD/6oZyc67TTq8CNQFsT04CDoGSt9ltMp
	+99g+w0m23CBwM3Y4SQ9DFHEXNk+HHGiaW4+yJ4PaG9rnv2CWVIA2TzxVO+LMtS6uu9
	QBlpRamSTxo9qWorFQP8/tJyUt6/Qp/usBuXFnTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180750e6134-2bceccf5-14a5-414f-9920-6b1719e43bb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12bb497be787d9680a5042e8b7c098a4e28512d3238ed2f702ce8a1660076e84
Date: Fri, 29 Apr 2022 11:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651231318
