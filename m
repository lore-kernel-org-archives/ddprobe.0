Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAD77E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 23:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653090239;
	h=To:Subject:From:Message-Id:Date;
	bh=W+Gcu1ZiGg0rm86Sg8H5RBz2Zq4G9BjcOT9dGCIhcnU=;
	b=VZdP4foQdU4oKmh4OFz6aO0yLvX6QTSGaZa1HtvPlNEarz9d1p8j+yxW949fPrf1
	gj4MmEGtNPVzSI3weiY4zp/lGwTTyhSIc9vGn5mPZXZXz78LWWVEHjO8iFIP66t4rVQ
	o4oB29vgZylr+d+lxTj0M5mCIXIVwvpOKpcSI1bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653090239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W+Gcu1ZiGg0rm86Sg8H5RBz2Zq4G9BjcOT9dGCIhcnU=;
	b=baljeRolwKHWatZ7iBvdGgELVyAd/L/MuhuXUe/YqDUvNiJAjl0k0lYGkqvhGIGy
	iSaicYwWlqalTCrzwQQfYKJBP8NiBLf+TSQefeCLicQVPsr2qn0efMSZDftvR6SOGMu
	uVgp68NRP4sftGhAJsR4yo9Pn5kz+a3LBiWlRnYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3db4338-96ed4ee1-80b6-40e0-b9ef-0f7df9dc1634-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65aeed3ed2317de79939fcaf1fd05bec125e9c1fb41b5f880efc0106beface82
Date: Fri, 20 May 2022 23:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653090239
