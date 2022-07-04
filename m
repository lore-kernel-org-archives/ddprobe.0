Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2450828E1
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656946012;
	h=To:Subject:From:Message-Id:Date;
	bh=5B3H5z2Knva2stF20t/rsmV9i6Vq/YQ4yoqnOBIMQ6c=;
	b=Ipuc9G0bXhVH3g7wTNf5T5zjTV+AtdU6ESqbwalimOP/FHf09dLcGZPwL4z6GMv7
	jrO8QEOXzDWYzySqi+PDJa0pNj8PSKX5ItdOwlKT1pRq7DpkfKT+h4AjUS+0qsDFQv+
	P/Olkg3UVSNaXl1soC+6xZptmRM+iP6eLSZEMW5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656946012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5B3H5z2Knva2stF20t/rsmV9i6Vq/YQ4yoqnOBIMQ6c=;
	b=k3+Xz0sqcNamTrRAHw7M7OWOj5rQA9kVLVNNGF/xZs8vD1awB5KFk67pm9RkapOF
	qMbarRQrF2BRmk1VkHKYHsTGgVs9/leQvCSUMvEwOKGF58cKOHhMAPADIsmpkLNVsQG
	q4hexaUM2GQAsalDeZKVcxtuFrGBPE+KwLH4cLrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9adb0a1-00bb37e4-710a-4080-b605-607bbb4351bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ea26536d30b989a463f590aeb052f35fe049870e0804c1d4796fb090f1d69a
Date: Mon, 4 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656946012
