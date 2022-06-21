Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A6A28
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655778419;
	h=To:Subject:From:Message-Id:Date;
	bh=HX/HgRdK5VwehpFCaYVo6l5XAgvJBu6EnrdexiYNv3U=;
	b=XpkdZvkE/HpMYLljI2NIzZyKEXQ7f3JqLx6h8K9tq3rmIxqkfThQJRMPLTn4ciHH
	o9pdmiwRu1QR2TRQOalepYSnYbGbLC92+reiUpuAKbRMJyWII/OdaBbnrCU8lAkmiNw
	lpGahxQnY80x2qdpTReqS886N0HP/YRqDzJ3/w1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655778419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HX/HgRdK5VwehpFCaYVo6l5XAgvJBu6EnrdexiYNv3U=;
	b=DorVFtFRfY4dyA2sw0Ek566A9c1emKZ8H7ZI94amIbhk1AnA6mD9fWOV/uEx40H2
	Olx7gv/JsTDpiC6w1WSWYPbpnGknWEpJbf2fIJVPG0QtkVRxwCUNXJW5Jr4KfeUnfKR
	LiELRfyLmtlpng9qZ9t5qIhyHwKsOdGkHbLtM/GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818415a258-f434b350-3c86-479e-9a3d-b5329e696948-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ddd9c92464c2b3a4e9fab35337e748c5ac3b40a4517fcf61c089526e31acb4
Date: Tue, 21 Jun 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655778419
