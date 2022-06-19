Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6A67B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 19:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655666999;
	h=To:Subject:From:Message-Id:Date;
	bh=/UZ/TOO6yYMe1W8YXNvs2XHEFMhdpCawcvuktJif8dk=;
	b=fuif13cbdYcTNEDcKPy29PSARNyx05DbYx6RxcwF5tWKa74Oq/fyxFSm4CsWQH7E
	w8zfEPALhifHjzyc7cmSNw6uwpzi8m5YNYifyRL0RroLIACxsQ53dwwDIJUKyA/zgUe
	ZZq8LxU7o0hapziFjm1NlyRVUuSmGjJGEPOTnUjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655666999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/UZ/TOO6yYMe1W8YXNvs2XHEFMhdpCawcvuktJif8dk=;
	b=ce/OyBaOzCh4AeMqfa65dfHyrbwRAvSDYI7X3pOGQW07qXaiRLInj7wKeys4YSQe
	WGZpaumh4nMF5pR/sIb6OvH+aIpkxvzSN15njzpf8sUmW6M5iFr2zb+8/abt2aBMd6R
	VZLoyvgcTMD6WnQbYrEQNy4cxe6PgKHN0VTlrPoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d717f9b-7f0abcb1-8ceb-4d8a-95f7-81cea1c20e32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dab52fdc4ef27a73c4dadb34533fee9a7598c6878b0bdd18cc4b7df51052060c
Date: Sun, 19 Jun 2022 19:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655666998
