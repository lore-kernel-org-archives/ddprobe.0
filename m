Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704F81FC0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 17:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652116678;
	h=To:Subject:From:Message-Id:Date;
	bh=7TIJmJNC1TNMv3DLD10hq+yPsoYnOZ5LYvNomw5TYmw=;
	b=XPN0oODLQ5Or5lrqUsle324a7paaN4lJIw/KPjdtD0GDCGrVfWve67+WaOoDa1uC
	1f8S8xt6XVHJyN1+RvY42+l4EqI8kcirljfl1TUZmvh7V4RBmbSAH+qPp4bef8mGnZS
	wXzLRza3CF5mjvsqZdopOC2By3Tqt7HjWGIBYhgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652116678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7TIJmJNC1TNMv3DLD10hq+yPsoYnOZ5LYvNomw5TYmw=;
	b=j6E0JAckh8MKKfo04H34X0NBjDKL6Sip2D1uobQqTRnZXQHvciYIWpjaU65j47c+
	k+HWomUO5NTK+z5nIh3aC4gBFxNyU4LiwTOEz96LwCJBag8QSHUTEM5dQ9Z3eDHSOVI
	EaqzwqTgUl7ewJXI5OmkOt51+gvMtvekC/sqWdes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9d3e67e-2a62852d-42be-434a-8e23-87500856fbfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c51249882d39b794a3c1905cb91704dd1685e0230edf92706b31852c7b0d2190
Date: Mon, 9 May 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652116678
