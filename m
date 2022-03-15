Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008B57A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647369085;
	h=To:Subject:From:Message-Id:Date;
	bh=nXpfW/0InKMmtD16SNXh9lSFNY8TPirqfqdyJ/ccUFY=;
	b=R3a6QZDcvdib90I+ceqMdOE3z3PwY9fqKijDxVgNz966ekr/QqRZBpiRgtEOZQyG
	kGgHfgdYqJpbXhlKPveL25DzA79OAcmqYloK1p6qmFW3jzKUB3jxQbO25k8M3CNeZi8
	enXN8CMVvTKzcyGEuoVD+nrFevrER5yXZXxxgL0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647369085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXpfW/0InKMmtD16SNXh9lSFNY8TPirqfqdyJ/ccUFY=;
	b=fzeQ+N7NacnxQau5PetEwyvHZAMfJHWA47sijwXNRdX4oUe+HCuB/tY3/hZ9fQKe
	yAUbJlNoyfSaHvQdC9GR1RZbHrngYVFVtnTrCQ2k7pcwzpV7LLNvaxcmTs5fxA6a/vJ
	bGTBEzrdf2U5kb3d+gbczPYdCxGsQqdpCXXdgD8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ed95f48-203aff36-903c-4e05-9be7-5932329f22c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d85c162083d39ec3509fb119b3caf2510c84286215516c0bdab4e884e45281e3
Date: Tue, 15 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647369084
