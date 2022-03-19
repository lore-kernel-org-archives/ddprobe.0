Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D726180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647688884;
	h=To:Subject:From:Message-Id:Date;
	bh=Wsb9zifLa9r7E3dPGSjZLHtcEs6UTMuPL9RGNAqMlwA=;
	b=cOoJcmedI8189jTefjyUYaoT0EPOtJs1sV3fbOZORIOSzTywQrgp6xP7DzUeSE/+
	MIyq3PYVqC092y7+YxHAetqnpQ8szc1lA80yyLE5HM/73wGC1mP6uBOT4ohf8HeHSiT
	BxGzdaiPj5ldFGc4Mn6sJbFi+nYP+JN+poRdOIbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647688884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wsb9zifLa9r7E3dPGSjZLHtcEs6UTMuPL9RGNAqMlwA=;
	b=W+d+6z68ITY8isq9wQZ4Izwluu/AQm4Z3SFYpqjAjgwU2XpVEZ+54kvkWihlNn2E
	C0Ws6T80eop3Y2bZ2Zhba7vwde9xZxbvARiOnFt3o/Nrc7AzECRBrZpTVEmbbIoVCUo
	Zz+APWaZtkwo6aK0WV3EeH1aZ9fTfWvz3EKio1MQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1e921f5-02149747-38ba-495a-aa28-6a5febd1d520-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2d1a71470c763589480d17f3b5831f54f62a9e2d4b323c6cb9124957d0d1d19
Date: Sat, 19 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647688884
