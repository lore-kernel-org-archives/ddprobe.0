Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A927C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654631819;
	h=To:Subject:From:Message-Id:Date;
	bh=YjOuFzoDeX5/teNry2bhqb9W7u8sxTum2oq+Gg3feGI=;
	b=OGDMMtNCggTiV6fLtdz/ktnkS044n9c0R4X7eDCn41eSvSr6SID49Tbw7hrgsngm
	ZZ8zcLOiLUelrGavfjFf8aaMSl8rJW4/J7lXzdI1j9kXjbG8QMVK3zLyDApUA2HvQIZ
	c3zYGmGngWEu4scjLcw9Y6/85/RGn2K7EhHtsBD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654631819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YjOuFzoDeX5/teNry2bhqb9W7u8sxTum2oq+Gg3feGI=;
	b=GYQZk1CR1jCAU8rQ73pBlEKEN2tQvwNlKLcAVVoweicoyfeaInY/OlJ/fqEgSFbL
	9viiqmyOGwylfkeCbFYEOnR1NG/CyWu+Su3R0xDJnQn6nPLJBwBTmE0EzWtzNKyi/5P
	IqUomClxSnP8WfWoFqCFHvzZkGS6VJVsLMF9BDq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fbde840-3217c710-4d60-4736-82d6-437204ce706d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e61524562f1d15ec16fb010bc4bf749a65bf7090d84d67f95d864b6c6d0a373
Date: Tue, 7 Jun 2022 19:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654631819
