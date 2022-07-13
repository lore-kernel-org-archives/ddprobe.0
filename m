Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD572FB3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657737412;
	h=To:Subject:From:Message-Id:Date;
	bh=tyIVwgzXB5vWjuremsoKYub7NKSTaxXlHpWrHQ652Tc=;
	b=XYSQXTRNhLgNVGMlCmx4IC+jhIz8ZRH0VkLkdq5mHls3wSnFwU9fCPAhH2ZIlZce
	8g2GGwaOeN2C5fSZXS3SpJADhzkwZhe2/gPI6qBbfojPIhvgHC2wElXZTAPJfHqSI0u
	N+IliRICHU9ez8CIK1YsXCqFYI+JDEJ+VcgMQMG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657737412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyIVwgzXB5vWjuremsoKYub7NKSTaxXlHpWrHQ652Tc=;
	b=e0ZO6sdJ2wloeo4qAm1KGcDoNUIevwi45+g/MnpVm2gtqEmMLmZQr5qplLEN8Hz2
	pSkAJWK5py3jun+l2B3n5NGTE6M7UU0u+6LIHf1bxHkN4wyFqXTQesiXjLwmb1v18M/
	vYEXQi2Qjprwn1r2Z3O6gsUXKxqUaguhylwWyf0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8d97eb9-951fd9d2-4d55-4133-a2ea-e2db7e2ec042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6da9d86f65d79f0a385f2e6c38cf35409e991f6ee6a3e75f82eefc6d390f7ea
Date: Wed, 13 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657737412
