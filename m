Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029B03229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656370012;
	h=To:Subject:From:Message-Id:Date;
	bh=FfA3BqFW43RED7mFihFLRzwvyqEcdtGD8H9QL19viPc=;
	b=DPqVKuDT+AIZNM+ZPK8fU7CCqAd+TYdrxuMw/tvQCSmzDr9sQrbUyNyNqi0uHxSa
	6hVZcjChE3ieHm6s2DFVhRe8jYtQQRUQYngubdFRAodMqai4+Vq9jtnBwQ+0kXYA+H5
	AkzknMT/iN/SWk/Nb7xuaQMi0Vb1f1walGayiNSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656370012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FfA3BqFW43RED7mFihFLRzwvyqEcdtGD8H9QL19viPc=;
	b=M4yQxwWFKmoVwL7o3VaBmML6wOVpR34BIa8BmnsHvXHFivIihgtW4tcuAjxkT1ct
	fxghinwGd+YjFVLFFDrlCtozsUfyeaLD2JXfaXdGYUFffSdQD3e1xQX22bk85mESn0A
	k6124bmU5zRDv9fh64B2jmnaxlHijsjRRjiC86Xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a758a0ae-a1117302-3a38-4e97-9e12-cf0e1e54cb56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36ee96c400460d33ac480afb6fbf101e758c6692a0cff410b01052e20c18f804
Date: Mon, 27 Jun 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656370012
