Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208691840
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655947979;
	h=To:Subject:From:Message-Id:Date;
	bh=xAq2+W8gr+ion0weFpcDsgjl+d7yzW309QxlWR4jkpo=;
	b=YtLUd7DpSTznw45+Iwyhhfvx6WufdMietcXCLKKjD8K7E6f1HyILGbzlPzLfC/Yc
	gmF9N2/jhI7etBGgQnT1Asr+IALfgIiaEDcDxmS8+k6MiqhKkwPTegND68PIEsiYsxo
	Y0/g0d0rgVIyZfeQD80B9jHwJ3MhKFqC3e+C9zcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655947979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAq2+W8gr+ion0weFpcDsgjl+d7yzW309QxlWR4jkpo=;
	b=hKAayTeKJS/ZHE9dwHYzOw7kc4Cbm7PSE32apnXkiXCvF7UZ1xl1Zirz2GjiWdZT
	7bLIZASd3tsTSPKC0K49msjVcx5tfDXLx9fuHl/rj/v+dFuIKRJb4fdU0AUz3uZgjtP
	X5MehivwJH0Tfxq27myv2uYOkfnhwR+gZItpk/Hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e30e9e7-05ee7802-a18a-48a1-9be2-e44a8c9f7c38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d896b3327433465ded106f1559001a0aa34e52c451083cc1772a7b4127bcbe0
Date: Thu, 23 Jun 2022 01:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655947979
