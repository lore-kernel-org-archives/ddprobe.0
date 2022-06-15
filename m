Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162AB7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 10:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655290259;
	h=To:Subject:From:Message-Id:Date;
	bh=TPvIrsM/fAHRDo2WvyygJ0lpBv73aeCqNf9bG59QBbA=;
	b=b109UH/xswqlld9ph2IpeCWog3b49jMuPIQFhI940f292G3/ujVY1bdkVWQvAMC6
	6y4P9yLtJkpv+6wP02gF1GDRzM9jhL0IjXrMw9f6kGZOs2YJn8oPQD8+PK3rYdzV1xe
	22MgGgj35IZTNJ7dAfCQQ9iAtT8cSg5zrVOW+UY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655290259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TPvIrsM/fAHRDo2WvyygJ0lpBv73aeCqNf9bG59QBbA=;
	b=Gd5B1nEuIRhbvhC2W5VqssHLCSi2Fx43ujHII6xUKj0hePCLciaoMjJMrA/F5a1C
	xcqf+euRl21WRn3o0dZOYpN9X3ASrWKp8YjJqSlr94sjaY6UKPM/YYgOeOA64BiD0gc
	ZewPM8KJSPxgK05sYcH7y60UQucF09YSnb2unLtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166fce790-498b3cad-990f-46a0-b986-1a79bf14a017-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fb2acd9f2f734c33b4b97e66d9a2a4cffb7948f2600f6fb61697c98259d37b8
Date: Wed, 15 Jun 2022 10:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655290259
