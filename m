Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244132566
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650920218;
	h=To:Subject:From:Message-Id:Date;
	bh=xD33ODhYb+6bWXML9IxKrSXAbodV0IioS2YX++l2F0g=;
	b=ZOWY1Oj4doei/kO2l9W3YjnMKncevyIoAKxZlgWqEsbODxcZPf2bziQXKdHrXgFr
	VrM4R6PhRuVbF6RKrOaF4p40+rjCmnA3Rdj7bgAn+6+QyN6pWoGXkAi5sYvP4zrY0kT
	vUivTYLMvcY9ES+S1v/u7thf69Vz7RBxcRhnmgrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650920218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xD33ODhYb+6bWXML9IxKrSXAbodV0IioS2YX++l2F0g=;
	b=IJq9y8Um/xmEFg/rs+WGDzxwzy/hUqd8ZB+1jx+3vNjlIv8HVCjvudkdgWJ9BZ9w
	NB1RJxRzkOTLWw+uyoSZkR6KBHS6CswQ2BMxXj0QO7/M7qKWSONaI6KWG/vKlkHKcay
	bmWvWcaVaTavFC6oQFhiZU108Y5OFyf3LOm4cwJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062835ef9-f294c9cd-6c4d-4eee-bea8-969f3aaa9f09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2f198d163dc34c2341e8191a78599375d667dbf7f1434a4cf620e0c3e5df5c0
Date: Mon, 25 Apr 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650920218
