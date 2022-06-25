Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1007115A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656130012;
	h=To:Subject:From:Message-Id:Date;
	bh=pojVOOPhZgNagbkrIOuQ1HyXN/jtopcRNjX1FzYqXmo=;
	b=BkDToaNb64355T7DOpJ+24e1cBtwJxgcVD5k97NmtZkAllegZLk3q+Wa/bgsgyO8
	8rBrl5OGh20Eon30hBxjNbCADTW+AxZj+5TOMSWxQEArJ1P5UCn71Cs8s5hux0BgCUf
	BUWOfdWON0Ia7EABAoJwlUQNjbyGFIZgkWPARhk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656130012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pojVOOPhZgNagbkrIOuQ1HyXN/jtopcRNjX1FzYqXmo=;
	b=CuQxu54bDsj0Igvuj8UAsS9ZurngGDML3G6Bd8IRudXeoFwrs9q7wvC/sb0GxcfM
	U5uyVipap5CY1HBe30l9VZZMm0cR15oCMxMJd99uO8/NpDIzHsaXvwvrx68tV3IHqe0
	haxgPPzQSXLXDHYZb1+CT+MsAa8KxNzVTZWmzPjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181990a846f-286048e6-8a6c-4947-a5ac-e4a1fb47dcb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98d98c3b28a6c22857a1311492d8263238c3a9a42171c5058c626e632a25b6cb
Date: Sat, 25 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656130012
