Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AB0186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644959485;
	h=To:Subject:From:Message-Id:Date;
	bh=0XuziYtdFnLd/OumSLLseygrxJ/ytUXz9up7hYfgSdU=;
	b=HLlwD4WZUWHSVTfF5GQGVaC9H8lFz3cUVpK3XmoIcXkRfh51v+4h9eXFosiN1vA8
	zJE7gIEUnVpwIJWkHHoNLdpCtw0CCcRu90WQ1Vf0SG1M/M8dG1xRuH9IY2OFLdZ/X5c
	Xq6h/LY+URL+DKE2LcY6S0TGhZNFLIl7NfU5rBIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644959485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0XuziYtdFnLd/OumSLLseygrxJ/ytUXz9up7hYfgSdU=;
	b=XVCYFUVp10YvfCddXaGe6nu7WtMqXbajMU9dS9TY+4cbdyYq1JD2pzMThtZKgj1C
	oE8Up7bUn0Ey63KIZZpWurkDOI+mEvgrTA5Du1g9JYPtLU0YsIeYZJ+UYY8yAm7on9h
	8DzaXWwUAjq+ZbiQ7GuiQxZGmMEMF7XUPV8yXB6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff39cb7c-80521ce7-b6e1-440b-b46a-879057d50c7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0c92df64089036a8f0eef153a543a573a868aba2a425a30f1170779b5cc1ec2
Date: Tue, 15 Feb 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644959484
