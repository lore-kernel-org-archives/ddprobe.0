Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F9B15A9
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 02:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651458358;
	h=To:Subject:From:Message-Id:Date;
	bh=38+WgvEmFbO/GFOMIzym6NpymFJbQ6sIT4STm77s6II=;
	b=fNwVJnqC6T9vb0eyXccO/iap+3cDVx6bkm7NRNLtE202hBbUuAwJ5jDu8FXNAvRr
	sIP9GJyuQjOBBmejoibxXg70UPCx2GI8SQIA55FacHoEr3J5rHYIQnLRYpySVdELumT
	WuKsQdLlB9TgpDcaVZfY4u/ds2ddlwb55b6keyVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651458358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=38+WgvEmFbO/GFOMIzym6NpymFJbQ6sIT4STm77s6II=;
	b=iUx+cmBFUaLsE+Q0uMYcxtSvq3BmQnjpUDKDl08ufls3UOO/t4UGpGERzsMWMsZZ
	aPpka++ysMOKZnFx+9cprh8vDvtYyj2xqPmgKcLYQkzA6/g6+OE1zXUv8ZxUP8drGnb
	OZXt8HqAnTHLlVCm0pwTheH35j+IOftrzKlRsG3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808296bc38-cb0ec171-cccf-4b4d-80b1-0d94441b0878-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a47edba9cc281645541471051f698b9f6aaf124d82eb3f5458cf6de41a886c
Date: Mon, 2 May 2022 02:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651458358
