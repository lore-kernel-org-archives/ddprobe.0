Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FE67B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 00:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655683559;
	h=To:Subject:From:Message-Id:Date;
	bh=5R/ADApt87o61sy1drc2fwaT8StwwBCa4DgT6dc3zt0=;
	b=IfpdOBwWNBNfJAKQg/Qvqeh0hDWjD8okBwqYnC0emBspyL9AhVTF9kwFB+g5Zm1C
	22xaG4nYSReCCOIELdG0ZlMS2jjdoaBxAMqVCEvgmfC8hR0WtaOCVIYzKMc2gdcds2+
	P49kWoq1eD1ov0JIfIPZ+fervUzEcdkvVDXsSpJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655683559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5R/ADApt87o61sy1drc2fwaT8StwwBCa4DgT6dc3zt0=;
	b=i34e8KomctMDFqtbp4s8fWldl55pZx6uFuq4R4/hBAQOpregvkCuCnb7s/jj2s1y
	PZmOKZazzYNFvEELP0+HY6JYT53zMet1nOk/wJ3+Ap2Li+L+WXYA7o1oi1HaV9pGF1D
	LHOG3fMqe/L0vXYxjNA+qTPWFDCnYFBtNeZgwRT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e6e2f5e-9c2b4b21-324f-450f-9dc2-ace1ac67b75d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b532125fe9bbc75a33a4f063a98b6962f0d2974edd6be05fb37b2682c505bebf
Date: Mon, 20 Jun 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655683558
