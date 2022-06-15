Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB129A7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 23:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655337179;
	h=To:Subject:From:Message-Id:Date;
	bh=UigckAb7USxcMe2ZZH41Y4/IviCAsYGT9aB7Hw7RtY8=;
	b=basNReXUIbT+UAW8DEpCTQx1hFnNsg4RwVfvo8/qvpzLsrcMRIMkn9PH69/cPjuZ
	p+DsAb0+eAQ4llJGEUGgaBGfN92AmfwnJY3uYdwBg8WtVCLcz3ttnRZ1CnrNKMRxgbg
	6ovY75ud1WuvWjgKqXDKyBaiTO4mF9XH/1JFpBQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655337179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UigckAb7USxcMe2ZZH41Y4/IviCAsYGT9aB7Hw7RtY8=;
	b=k6Tu7rfaQwJbp7hLjIAydC98U5S5tHcQHDtD5AAYdIchhzwpMOyOn/qYyudNcXww
	ZaGPNl4Plubaya5xojf1A2WoBvddh/cdk6uSe1fB20khRKe8WvOaLryd2wmMBA8+olS
	xA5HmR5Cnc9YQoVKOd4FbFWWanySMIj4dp1ztcAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169c8d86b-ae4ee4a6-afb0-4d0f-ae95-ac2b4186ab9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00c7e5831759e6fc833aa246a918625eb6c9d3299beb1b479563f27868db94f5
Date: Wed, 15 Jun 2022 23:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655337179
