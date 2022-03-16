Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EE94688
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647419484;
	h=To:Subject:From:Message-Id:Date;
	bh=8dBRb3BR2g+/QjZTBLriisP0a++qKbkZ8dUjWZrg36M=;
	b=iEbnQNJAJNoUPWzbpFDkf4sCnlhRVw6/Rg2UQy/tIUkeMhTXlUCimQQlCIip5Ing
	E0JKi7DHZgslD1O+K/tBn1qVqkeUU5BVhSjRoJjqQs5EcEncVu7B0lrFtjNmi++seGi
	ccX9SItOtymM7UNZ2W0lTGKSxy+5Y7ndoYPbdSg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647419484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8dBRb3BR2g+/QjZTBLriisP0a++qKbkZ8dUjWZrg36M=;
	b=O64yJlbQ5q5BlT/x+xNqnTDACq/jVx6tijZlPdA0C3zofl6bCK9cQfWKjzYsOTER
	lSzAn3rC3ZpJ1Cpp21rjJq5e/Osan2K91Kw5gKcNx5qnY+5595qFbJhN1uUQ9++zvso
	yu2loFJ3mzV+1Dn4gUAVD421rED6WlQ6Yx7IFe9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91da6a32-ee090e8f-c2b4-4157-9b5e-1df92557f97f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8115e712d16696dad79c8260b5e7f0c62b178d1ec12c151227b112f50447b36b
Date: Wed, 16 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647419484
