Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C0E33CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660428052;
	h=To:Subject:From:Message-Id:Date;
	bh=tjUxT+vKNSCmQJoXHCryQa2XdECcHQH3VlZbxjyx5e0=;
	b=D7qgrzKYWuBByb/T8+4JV+W5C3z9QADAVJyv832qJBanQMoLwT1wdI0UBxiZFoPQ
	M8oe7d+nVLx0/3QyZp7rTgpqR1sa9OxUJhMgZR15oPyBD12IoIHT2o1jJJQVu8Oag6S
	9NG5VTinEkwlO9YfyH9ahZpwZbVq1ZbfjB2+Qslk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660428052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tjUxT+vKNSCmQJoXHCryQa2XdECcHQH3VlZbxjyx5e0=;
	b=WRPxjraeiohm0hEJ9ODtf+zC12YFncZvrvLSmWv9HegdivyzhUrbaZWpAuiT3YTp
	lmXq5RSh/d4djtreP43UF/BWHDW4Hn4GXHNUqIfksSGg1e29+bJqgtg1Z/iaVXh3lwG
	9X4FApd2p9jyJWg0A8z3k6+iIu9+mNVdbeoNFhls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829939688f-e67edb41-9e40-4dea-bb1c-cfa37bb0fc97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb1781f8d2fa6a34e74d0c8ea51502650fc54c07770d0f760f115fd23345db4c
Date: Sat, 13 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660428052
