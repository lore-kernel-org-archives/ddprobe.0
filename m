Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988DE625
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 10:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650968039;
	h=To:Subject:From:Message-Id:Date;
	bh=+vemrd92iaf4qDMcUscijkEgeFDdqxVsMZQYXk95AB0=;
	b=LgzmGMxsH10XZ03RHYq1oauIJOL10XL45yywwelJplOaVdjrmjQkONu2s1z/1sFe
	u7LhkHW0MUkDDFx6yvKfU2u3rbHaJwN1LUA6OQYW0ZNnlwIm7kq5ZVMJjgOawwYTeXD
	dfQyWJfGBkJOfLWPXVUi5F5j7PZgtYUnczMm2j9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650968039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vemrd92iaf4qDMcUscijkEgeFDdqxVsMZQYXk95AB0=;
	b=KDi3b7ti3HvFDYztt/LDtvr94gaJ5SuxYQ49mD4vv3ArJcwuwyOyjax5qx7To0f9
	fFQqjRd9nisVmdFNWOsCX/zk8U/pM+7SvJSZ0lu/rLuCi//EwES6VBENYO6x0LypUp+
	ruXIUSbdM/kgJ2jXdBmWk77v183i4E5sSW6JKBS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180655d0b85-21f16e28-9c79-447f-b50c-716c7d45b01d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d542525c26fc70362b90a5062e140b9b53e02546a8c406a978887597ed662d24
Date: Tue, 26 Apr 2022 10:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650968038
