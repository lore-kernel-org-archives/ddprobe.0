Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BBD7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647504385;
	h=To:Subject:From:Message-Id:Date;
	bh=w3E+sCEo9T5BDmvnGemghdBmeNnukpMd3zI9MiX9WZk=;
	b=iwMW7fFllROfeCqQ0sUcZ9pFrwLbjcbHStXhfgTgOOs/loOVaO5wQum44i8LqqDj
	Sb51oU05tVBkUN5obQNmGIoCr4Dv+gE3Tzt9U2wGrsv4Ju7OfKYDl6rNH9ZQhA0AKNK
	GoD1eBvi3XcLf4AXLcEyJJUKhxAnyhViqUDqrp7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647504385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w3E+sCEo9T5BDmvnGemghdBmeNnukpMd3zI9MiX9WZk=;
	b=W2W14NxfRh3/TOGeDyGR+aTCmLheVmZDb10+5rEVzqnltyDSylUFh43YH+ElaFmE
	Y5IN4I0/ffDKY+kjaYbZcuTwAeHX5qrEhqjRjAqjM734f966d6jDI7AVGtN2l310tLC
	wPkVewbsmjD1oDkI7v+CZrBUK0VH2vJRJJDc6nFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96e9e306-83c43547-48b5-4b01-acec-f886b14cf4cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e264de3b53ad546a87d72b009483d0e5cd5593cdacfa3eab8db3241907909a9
Date: Thu, 17 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647504384
