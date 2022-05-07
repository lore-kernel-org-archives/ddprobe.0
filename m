Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E17E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651909738;
	h=To:Subject:From:Message-Id:Date;
	bh=IJmWlPE0/eHhQd1m/C49RZEkhG/oPoxgn+F8U/XSe64=;
	b=ciJ/jRg0EA8OWTUiu8wt1RfNFw+QxhZZErzFWAalCAcnENzLvWA+AaeFDjb3XKnV
	o0zTxsyjyufv+cODUwcXK3R+I5ijEuKi7FOd7zG52jo6XbPtOutDAWPrWAO/4n+n38R
	d5vuB4YqoQbfdCTh6IDdQ0i4eAr7KPHcqfK9Ip+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651909738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJmWlPE0/eHhQd1m/C49RZEkhG/oPoxgn+F8U/XSe64=;
	b=ioIeqfEvUXVbT/vLMoVFJfd+QuXopIHN/zQi2jli2YRwUHtCFYmqtWYF8vj9qLjh
	aCgE7Bbqau5V0GVNl4bFQcPOGXOyyfrqs81AU698ZIAFbDo5DNFDctaYlyU29GcmWWp
	OSNnMLIGcU0R+ATX5BoiqDmZJr1Ur5mxuRjNNhgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d7e3f68-88c32c5e-ee7a-4cfd-aeba-f1a365f76b8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6e69208082ec29a6b286144c3c7b8af817aa52b53316f367ccd53b5c922f8f2
Date: Sat, 7 May 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651909738
