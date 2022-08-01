Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7C27F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659322252;
	h=To:Subject:From:Message-Id:Date;
	bh=eoA3iKeOtatOjpyDD9jb7Qp97Jkr5NqxHQ/1arg2sL8=;
	b=g0K1MXRZBwrlJswsIXEzLjUqyr9eyT9Ji4sW1ms1WVoMycPAkULAZQF8RajBzyjW
	NtKBDomntbsp1pD3mkZOFkTfOHdEdV3c2blu1m0OBBuyB0YYubif8U+tHsYiBMfNYPX
	DGbO7iJKq2Gm1aoucN9k90tI1Gm4qKtgTt45Zcts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659322252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eoA3iKeOtatOjpyDD9jb7Qp97Jkr5NqxHQ/1arg2sL8=;
	b=ECO4LHy+UrHx7x+WU/3O6lzzq31AmxtarFVilBulUw6Y19trqESTb9X2MmO1eaiI
	D1kNiQd3NVJAnU9AsxbOW7vExE5bBKJ6Pt+YjImr+52Hh8JnrBjaDYgw0dxTxzyhBIJ
	Kih6sU53a63VIXdGNDCaNXwg9bYdybvExS5mwOoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257503d52-85f24263-0376-438e-956c-744017ab96ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e483fa0f5ff50555bfae57b2a20c5579a41c92db881b5ffbce196d176d4bb3f2
Date: Mon, 1 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659322252
