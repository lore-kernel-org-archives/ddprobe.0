Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970522CA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658880053;
	h=To:Subject:From:Message-Id:Date;
	bh=N7KWWPmmcD157eM/18ZJYMQMOvdngatSJ5vT8F0/4bA=;
	b=jNgSTDCsGw+CjO02egDg6YwXikqNhNWdqzuCatIyOqRxBAK6NJgl96/bjgnblntP
	ALNRnf1dycEfZiSkMZEa8Gf8m/lJMmwN0u9bGZ+VOvdXGqgtLQOMxlFp415mfn5ye6e
	GZBHfocwTeJC+M9EMGamaySxp08dnz6+yuUxZusw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658880053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7KWWPmmcD157eM/18ZJYMQMOvdngatSJ5vT8F0/4bA=;
	b=SK31KO0aS3vfBP4GYINJPn+WPFw6ERlcg7eVVVfXUJkPghQ4swYAioTCIjz/vzN+
	s2gewDEsbh6TM8yWusfQvWMjijrQLcY8eK2uqEfJwTc2W4jJcTQMntqC6H1Rkz6dZVB
	8K69KvpJHIRcgtp3luwrN9kIhz55bkXSKG+4O4Jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823cf4cd55-eeddec11-b28a-4655-bb90-3e4b563a0ca6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4906554051a7b2f3fe0e2740edb65263fba076aae8486d3ada4470a30699ebcf
Date: Wed, 27 Jul 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658880052
