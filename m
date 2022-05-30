Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE93A7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653877619;
	h=To:Subject:From:Message-Id:Date;
	bh=PAZtcOYpgRUtPk/jzW/yP+RBMtKbb56NxtSPyJksBAg=;
	b=OX9C41n3SdLXb4pEMnWXGOo2u4EZ9aSJe2UEsizc3jqX9ZJ5oLQnLJCu4kFYR0xf
	qCISHymT+RbGhlPdrD2hQc4O7/jcCjxcyqoX5c/6DNvNONrIIz6ez2uQKAg+DrOLy0r
	TCguIFjrMpOn1ItJ7XgRZv2HUE+e06fsIhPJSNT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653877619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PAZtcOYpgRUtPk/jzW/yP+RBMtKbb56NxtSPyJksBAg=;
	b=L5MdZQxkUqb6BLeK+uEUUno8pvMIPnJcTTzSZz71OblyMb9VazkzbJOQlICnZOZa
	rKUqVBr9ELSvAOfWBuF9sIXBJc21IJJmfziGXwdYMy3h9+Bz79a9jr6sxY3LGj0oKtj
	tp+vY67yevhejI9QvIQQUr9TDmTOWh/uabXWde9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112c9ba29-530cac7b-7a3b-4a31-84e0-53f669606c8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51d71b19299bb53cfe40d9a63680083efcedc58f8ccfda302f0d861a0817aad4
Date: Mon, 30 May 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653877619
