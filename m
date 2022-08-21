Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0A246BF
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661125852;
	h=To:Subject:From:Message-Id:Date;
	bh=BD7Hccx9zCQU8vsB6TqRtSFasTef0ks95oQYfG1l0Pk=;
	b=BsBIfaGrINjw/Esroyzfc7tfpl3aWArh7KHoSRZhToJdT7jTdlG43mjzEMdfKM1H
	MQ+tlpd0ZbM1pBiuQ4l6UQKydaJF62pzZgG5AaVMqI6s+oo10pE6XN2+dQKAVa/txBb
	6WPmhyEIC+x+wMBJnLT86mGKfKqaSEyVDCYKJA60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661125852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BD7Hccx9zCQU8vsB6TqRtSFasTef0ks95oQYfG1l0Pk=;
	b=XDwx9VDOCxvBLyfUENMssS6X1gN+kqOm/zSXFEEy7gNHH5r0fcO9qoLTDUylKVUU
	f3l/oUx+7b7fJgKhV+EDQ6p7gPCJdMeroIQ0YBbqKzpiart4tVS2QyDZwZ9GT7fDgy8
	69c1DBDKyGg+HXMtpX59yfOlekAbnaRqKLrPtJw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2d0fda1-e07ec0ae-fa79-4b48-bcf7-2c9424a271d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11ef3497ed8a16a18ef929b307e84cadb5c63f1d6a8c97247b114a878f09e342
Date: Sun, 21 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661125852
