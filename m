Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE687F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 11:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655723519;
	h=To:Subject:From:Message-Id:Date;
	bh=0zQmAP9l/jIg+9iS4GEl0BMx6Yxc8703zR3gr536gFg=;
	b=aQ38GkVLxTj+lyP8bt+N4Mwvwpgn+WWFcUaNidPPbG+v9cuR1eZsvfYPdkYFfiw4
	6Kq7cSxzEdn9OIede7sGhcERpt18VhgrJDLCuMMt28P55ZQZUiaw0OcBRR9olpG2C7X
	jLBD61NwIE+5R+UouxS/Y0eCeSSOuI/XFZA8t0EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655723519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0zQmAP9l/jIg+9iS4GEl0BMx6Yxc8703zR3gr536gFg=;
	b=ZQXkVkTtKvEm1jxDPTH6eBltCSNYGX5ThAxWhURgzTTlMuvYVZ252a0jyQKscHzz
	Ao5PZXyzkZaJOxCrq7Ip2G8QRxDNbkXsX9YQXHj0t3cVD5BvZaWmoJUbF33ZwQb1tlk
	m3ID8w2HwFfvSee5tKJYFDCl6BQm+DIXJ8IL7bJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180cfecf9-aaf51c13-6564-41a9-b1dd-7586b6849304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f41cc943bbc2931c5deb4cc9ff594db287a6071221d16397eb920d97bc30aac9
Date: Mon, 20 Jun 2022 11:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655723519
