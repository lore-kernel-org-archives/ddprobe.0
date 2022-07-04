Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168B515A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656905212;
	h=To:Subject:From:Message-Id:Date;
	bh=aXPtT/PwOB4w/L38vCyNG3oY1h7OKU//C/u/16yxsDM=;
	b=eoWLznij3ujTVyqTChb3T8x46G8m+7WvPybzOkgROE4ffpe8YI7K+BfBnf2WNsV/
	QeC8Zdy9BRSSiHKUpkKD92FJiIHAoH0jRriRFuWpnelYREYxBxJQhdN5iLw4w0lJUGk
	HJjKPZWS1V1qV4nZ8aSqDhZImEwq0ef4MtNHiPo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656905212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aXPtT/PwOB4w/L38vCyNG3oY1h7OKU//C/u/16yxsDM=;
	b=kaJevLIAZ4gb5FpV5H/WvZSzs81jUB0Ipwgv2NUydHbhOGDfCxXw1TJllLDhe40v
	XQV4Pb8HbBJXnpxUTwQ5r8bVk6W3+HhDQCESH7N3Q1/+8cz+dnMoWW9K07YL/2Yc1aY
	Y4tyjttkJKFB63aUG7f7rwQpFlCcAlcV8J6+9Hbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c73f2162-a85158eb-243b-48e6-a156-c283812fae34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b79eb091f2adb20dd98d5ad2e44dd5fb2c63652e090ef01d01cdce66b5bc46e5
Date: Mon, 4 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656905212
