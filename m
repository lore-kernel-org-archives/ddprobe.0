Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD8923CD
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658437012;
	h=To:Subject:From:Message-Id:Date;
	bh=+J1+QZoilc6gZ0EK6Ib9NEVCiptSxjp48hDtf5bCrSs=;
	b=FtFI0Y0uFRB9hUo22MNMYYJyMc8Ea5KyqFqp8UHF+Otos0GzvKb1damLHWjzaJNp
	EzhbWNLuFxqtUVY76l8KsxpQolHcdwhIiHCMHuiB5Odr6gr03+3xpnVKncyl4QEGpbc
	GacBt2expfd9ZqT+hqjfZ3dRcufSUKynea9kmoKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658437012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+J1+QZoilc6gZ0EK6Ib9NEVCiptSxjp48hDtf5bCrSs=;
	b=HU1g9km3uib1BSY8kjwnRF39Q65bkh2NndWh4+I8WWoKH0VV9mJfxtuUQpjbOZKN
	XJbilcjA7PhrFqo8bfhzzY5C8EGMdaYzzlBm6rpl+whYP9euUA258WmpabjdzM5wUP+
	RFzvMxopWPTb0Ip1IPPDJPaueNzCA9T/1jTFBKXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182228c8b34-bb614987-781d-4662-8718-8039a7178451-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51682f73e267d9c83491dafeb9ef22a5f5f6f89674f654f2dd3223311afd5b2a
Date: Thu, 21 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658437012
