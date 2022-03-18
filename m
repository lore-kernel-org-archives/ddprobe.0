Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4422F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647595285;
	h=To:Subject:From:Message-Id:Date;
	bh=8+1Z/ZI0HIVBZ3RDluvR+B4Vdli7cvsLoNnjzwK0OB0=;
	b=KcVS2NpFMlzI0j2ai2J0xaL5Elz3CQnxk78A92DEjwdjdgiL1B2hOv4P0ed7NT2h
	JUw9D59DZtMMh08lsXRVDAK1dlNUAsnE92JqikCXEU0QJj2QBVL/RzwuwaPZSfl+8W/
	H7q6ql4XTBWkuTDPODEwZt4L7OG0ShP2s/xX7kUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647595285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8+1Z/ZI0HIVBZ3RDluvR+B4Vdli7cvsLoNnjzwK0OB0=;
	b=f+VawfySjXDsVL2Iodx0ry015vpsL2NuSh9x8M+EdR74U2uvz6gz7yEi0dMXE6T2
	DUJd7n5BlT0RZZDRRydbrzJgxIweK2ydz2smi4mGzL2tVeZLilFLUrctbq3s7zKKUS+
	ZacZYDTF5Icvdi0vhOMUEyVN5YPOho0p0AaDPlcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c54e94b-b9074b0c-93a4-4f7d-95ed-6782a65c5283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6749782b5ea71a4a1f58c9dda700318e7bf71b2d95d3bca18e3e43ddd0370e60
Date: Fri, 18 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647595284
