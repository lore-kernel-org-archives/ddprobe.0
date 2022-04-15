Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D8E17E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 08:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650009838;
	h=To:Subject:From:Message-Id:Date;
	bh=D0F2vb9JLyBiBLvJ2RGxwmbmIaoBkdwQV/TLv5mX+Z0=;
	b=FF3iNzp4FOktKHGrDv9bgd/gPQkQXwBZ1FdbO77eF/653nFGoykuQ0K8N+F+2YnB
	LaTmxqKkWnA0chaWvhrNG5UmehNJV5v9GUeEJKuN9+RPtK2H4XXdA06BdnyyXGFDFWQ
	JQrj7vT7AqGnpSHaWkIv04H9tyYDrWiH+uIpDXAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650009838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D0F2vb9JLyBiBLvJ2RGxwmbmIaoBkdwQV/TLv5mX+Z0=;
	b=JEiOfCVykncLCCFjrpLVz+fI3qdNyg0Qa4PRCZdFklmFELRAl97s2yrq/Tz15DgT
	PjRBXaNeKx/dF46cHKO6EG8qK3BWYaFIh5F4I7z/IpGMNiaO2gCYt5Jd8PwacbYMwix
	ThHQLO+XfuorEV6eBRul/cXk83bDkkzBlxKk5zCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c4012b6-85960090-96fe-4d27-8421-040d812ba44d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f41a1103c104a2394df4b780bbe9be05909da5560902843855272d4b1b263772
Date: Fri, 15 Apr 2022 08:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650009838
