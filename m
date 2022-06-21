Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4B7483
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 19:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655839559;
	h=To:Subject:From:Message-Id:Date;
	bh=1XkV0YVjNzIw48D4P0qxaZ6/A+BCfNBqSepd+LzpDXI=;
	b=Q3Y1/3kt6o/nz3FoldKHd+shhb0+S6CQASBrMFic7O+Si33eYIu9raFF6C+CnjQ6
	laMxL+5b0t1t/5F/E4p3IdaSR2/rDAKPa34NzXAHSzDlkrsh1j+YV6qfcaKjtyrAurd
	Xkl8SSeAZ/0UnynFDeqwtc3juKYSFQZWsrcxbWOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655839559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1XkV0YVjNzIw48D4P0qxaZ6/A+BCfNBqSepd+LzpDXI=;
	b=iwBKfjoX+F9aZXKM5taJ6rmzM+0+CfUHsuyhfDu91unXTcz0TUQO7SYWhGUownaV
	Zxo1Z9ITYztbFR3X65aLGCERew8l6Vmw8jxGI9AEKhU7rNQxuxPnfo3fPKN842sgJ9W
	jH0z7go6e8B4jt6oVbBoD9Bd7ya6bRYZgohpgvDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187ba8e4d-d107023a-ef35-4ef1-853e-b6dc5ff6ef6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa7fc59f4e96311a92e1abd29e780b0dcb6f07e8533aecaefafffbb6e01217bd
Date: Tue, 21 Jun 2022 19:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655839559
