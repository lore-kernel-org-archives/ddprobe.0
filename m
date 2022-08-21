Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BF463B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661077252;
	h=To:Subject:From:Message-Id:Date;
	bh=n9LO4ENI2aFo7KF0T657BSbf58IzkJSTOLoV/WKB0E8=;
	b=DLbijACiCxXr3yjIRemh4YEfs7TXCHj/0m+Rx3enX5cY5PGtO5pEMVipyp4zrL7J
	IZS+e3/wmMBC7kfTZyW6b3b5hxb3s782xhp35Py+KvA4z6TraiAHP+pYRS7RQz/pRkL
	diztZICnc52B5S6BFaMXTih7fulbYCEHBAl3jznk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661077252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9LO4ENI2aFo7KF0T657BSbf58IzkJSTOLoV/WKB0E8=;
	b=ZxhA43/iXKQnv3C6y4YyZDu7EV0ZlG6cmIt802gYHSUQqbOdmX5LCyEjt7yDjVtO
	9YbN/pBHyeqhl8Q/Wig3yJYDOqjZhL7iMo23IOIyQK58KKJFBrMaZ1ocw480Dpv4Ogr
	8JBoIBmF3AEm/43gMmU2XQZdl01r4Vz4cro6pIbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfeb6a31-79a06776-0233-4b75-8ea4-e4cd6f5b25f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58ea90ca059bdbb53cf3d36d4d3a5e14e21aedfe865f752d1e8dc3ca3935d3ed
Date: Sun, 21 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661077252
