Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11311B68
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647267684;
	h=To:Subject:From:Message-Id:Date;
	bh=XPD4q0Lky3CRAss1D5s4QaPVENB/AFsbmDBjKMqmF/A=;
	b=k4j7WPPENtbS4tUuseXY9fX+h6j7j4tyymWp4NXzYh+gOX/33AjG+2GwIoD/slr7
	C8XjZOhfa4OT/fIxVJ1VR2sOhcHjk2ImgA5k9L4ttNHt+P3L0smrpCzKEjjhfTVQHaV
	dzmRxbSRN+Dhlp6HCMSbW9qyQ76SVacX6EfqcCC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647267684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XPD4q0Lky3CRAss1D5s4QaPVENB/AFsbmDBjKMqmF/A=;
	b=TuM059S4Z18H5SV9kfS1O11PpOcME3cl0VuvM62EBg3rhgHxTyOWjDHFHfob/J5q
	bjAMJ6MDovm0hXsxtGz275sSuCZpvisler+uvXmUlp6U4BoqTW1ZQHxfZ7d4U45a/P8
	rxFXJMiA0b4dv8whqS+rRfW9mbEnkxcXRPGO5eZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88ce2189-a15d6874-c589-46d3-b9e9-cb7faf375b4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d67cec5b0540345ffc89d4a41d853a613db3d1068bc576ad35a6933a9492d25
Date: Mon, 14 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647267684
