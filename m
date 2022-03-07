Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D4F7482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646694685;
	h=To:Subject:From:Message-Id:Date;
	bh=qNAzQ+ODUw+kzjBwMPEyUtWPm5e/aA0WSj92xCYHqf4=;
	b=WNae7axzs05YyO+Uk5o3g8Wfz6harXKavdmKsQqZ+4UZxT+ULbD+mncOC/kD1EMy
	J9zEUAaw90QXt4GizLu5I9UsK/NFT9rZejg0L2vuaGi2vltZzFhiKViA8Hv0Bob77ZS
	/UlQtKq4SNYH+ayMuyKoACRp1kDbUdDgNgk7eKPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646694685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNAzQ+ODUw+kzjBwMPEyUtWPm5e/aA0WSj92xCYHqf4=;
	b=kL/b/s0wxREOzOrK9j+KuOzoOwa4IJKNB24L2kbCAplsiB8LwmA7/IDR8FONg8cV
	rMqxNtTrUTG/NmwGd8kcC3XxKUMEmLCyKCt4OJpabH+XXb/oHXcMxzO0ubTllqOMxvX
	RmRSktgRHWddt6+ULp3ZITef/Nj1b+sKVvpDwUHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66a6d861-fc825eda-31ce-4f4a-911c-5b55ddab24d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e66171cd96a3637abe7ab16b0c2fc19133f3dc3c8433a6547d7792b2dd7084a
Date: Mon, 7 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646694684
