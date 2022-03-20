Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DF833CE
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647815784;
	h=To:Subject:From:Message-Id:Date;
	bh=+Mv1m+pcKCkyNrDwI/8GYvIKG/tyBakgrTL1ul1esFk=;
	b=P6/Ri8VXOlfoH+cWQ/gi0wABY4qESSAwm9bqR6LP0FcRw+Uy/S+WUjkoTXK28r+e
	TPOQy/CBYo7N9jgwvI4qWVbXBWknT/X2sKIsgyPSe4mK4P/RkhS+dchqYvuA/uo8n0Q
	cz1vCjjoWiAblhUt8EWqiIpbblcHOp9/Sw+i80+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647815784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Mv1m+pcKCkyNrDwI/8GYvIKG/tyBakgrTL1ul1esFk=;
	b=ZKJQ5PdoltklTT/KZy2InS2wxueCxPER6H6c5j8Pxb8GAxkywYebEMs8YWmcDZ+X
	ebz6eslutmVCLnm6ajtJKFlvSbNP+nxNgwEK3Vtktazt6PWlTbHk/q7O7DXxV/FCNXo
	RYkmSdRlvzJhDooVPHSuX7XCEk9L4VZe9U+4Ro/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa979792d-582e7d52-65dd-4c73-a228-cb91d6e88c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9810550f52259a249774eedc91d5e0b481bca74580df53583ed7a296266c2977
Date: Sun, 20 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647815784
