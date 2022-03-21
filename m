Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A0336F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647832884;
	h=To:Subject:From:Message-Id:Date;
	bh=ihEePzsdk4hBj3JVn6qgqOrlwHamfsSkOkOFUeDb+YE=;
	b=gG/fnthyR4+IXHfGgd1wNUXCMgGkWL6PSRSTVkExGS+NeLcMu1ywen42w8HjWoI4
	0CBZgIQQonDF+GxZoW9t1dJpWuM1nwqp+C6YxH//0g1BaIow1tMFuWBYkfbNqazRgaI
	C3cr30wEzfHuERKj3jtwclaaA3dm/HTVGtkEdr40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647832884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ihEePzsdk4hBj3JVn6qgqOrlwHamfsSkOkOFUeDb+YE=;
	b=C4FliiSm9TznNtAvw9vHhEgUhf+R6b5qu87MAZYt8s71jpQ6+PM9EmDSU+dxcYgA
	VLI2hbzu//mRliEValf+Csuqdmu2APsmyXddpTGyDqwxI+vTqBkViLbtN+40iha0E93
	5sxy1Ll50laaDwty2JqMHJA9uPgHol2sSI6AnPzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa7e663f-aa4262bd-3f41-424e-bb1b-5022b0930f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 868663551e794177d736f96ccb1270065475428582e7a58d30bd5c1d6d167860
Date: Mon, 21 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647832884
