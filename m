Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A85A184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 04:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655181479;
	h=To:Subject:From:Message-Id:Date;
	bh=hYBkl+6ou4iDyduc7IRkM3jaB41HU4LSW/7uXBKd+kM=;
	b=Pt5xn+9bn2DUG+TMHP9orUURcQB+GCRYkDT9kFUtJK/n5Y9i7C3bpcyO7oKVa8kT
	MO2cjE4oPQyxKg4EUyDMTaKsaauZUmItAOykDL24CwmtRV64o1Guo6jsE1NGJYFyajl
	V0xTWmhTzimEBixD4sx+KGiokkjwfUEVADmCKUuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655181479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hYBkl+6ou4iDyduc7IRkM3jaB41HU4LSW/7uXBKd+kM=;
	b=eMMybup8+VOypyOeTUIljPZpeZaOcNHTq8Oly3dLi0NJEUWoh85kV+V9CEoOUwVl
	41lHXCladcXrcWtDU+gp1uuuuwKKGX/J/gluB5rDO4wib+MbNjsN5zDnpgcp5Jqo808
	M9jJ8ig/7laYP10ZfHVj9Aha/TmFiwgx+VMAb/iY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160810d56-74245f2e-0660-41be-82eb-ed4c5dda7576-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 701bab16918b3ead416494eee698e99be130fdd3f75098cb7424fd3c4a9ddb2f
Date: Tue, 14 Jun 2022 04:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655181479
