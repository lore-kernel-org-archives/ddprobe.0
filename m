Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499137E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660403452;
	h=To:Subject:From:Message-Id:Date;
	bh=l/vCg34eMTxcMpt2ENj/4Q1ZGPUqvjMI6FRpYUvnSqA=;
	b=XaX8303tXsReplWYaq7zb1wg6MX82Eq33dz+sxBjVUiSI9zmfSKkhsFHelkN45l2
	59UZMwpB0B0yvL4HQeT1FYTaFKnaf8oeFSl6NtUhVmkm3vwYePN46sz6TVrAPCthz4e
	RhxuXF7O98mb7ZbR9Vq6xUa6l9yLy4vsFGESJOTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660403452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l/vCg34eMTxcMpt2ENj/4Q1ZGPUqvjMI6FRpYUvnSqA=;
	b=IDt8EEOvNScG4rP+0vpW1iYWbz3X+hgUJjL9vz2BtDmtOGBN/uVoy4UPlBnbawyf
	VVT7Ea5AQ+qzc3/k5w9RE9Sq6VPasWXDXNrey7NrdIO/mny1NmzjMO2rf2tzlPzS2N9
	TiFYWvHmz3w8ZgVVjPe6yZZlNkZOVXJ770nkUbMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297c20a9b-93339203-09ef-4323-aeeb-37cb5f03fcba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e489f506f61a14845b8ff66836c688c6cd34b74b4761933b8e40d79796856cee
Date: Sat, 13 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660403452
