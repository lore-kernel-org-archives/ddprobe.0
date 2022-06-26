Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8FC17FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656236212;
	h=To:Subject:From:Message-Id:Date;
	bh=no3XYyqRe93aXum0Man7oXYCNZ6LVC+Xmc/yDm4lpyI=;
	b=lFjhvswcaFS5Pnp4mp0jt+aDkFM1NxqMxRd7OiCZpB7jpVR5SrJxcvasQcR2LHAV
	1WS4PI8SIF7be3ZTvk2PTW9SqMqxzSzeL0DlciN2fTZDmc/YtFmrLEjwiG/INZbtmv5
	nuFWG5Pncz+2PRoCaq28C/ZvFzHGZcJNiIIE13lI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656236212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=no3XYyqRe93aXum0Man7oXYCNZ6LVC+Xmc/yDm4lpyI=;
	b=HZqkh3oHdl+x/WsVQ/SL+VPInRAt/UXVaE4ZyvsfP6l0ioor4V1xakFCpcZORCvr
	lF049ByPuMxv9uUsjr2O4usOoK0AwHINRU3SkqRdA7Lt8o11EefF4z7ESLbX+yGFJeZ
	HoZ53Eweo7c+zYo5/e6MALwcjToRlY+R86C6xkTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f5f005f-9da2f6ea-0324-49b6-a9a1-731a94ebd6ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c57b35b40330ea20ed3231a5b5fe214af3b61223e04ca9a1a0a6f416f8cff04
Date: Sun, 26 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656236212
