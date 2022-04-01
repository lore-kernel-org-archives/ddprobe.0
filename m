Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E857B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648829818;
	h=To:Subject:From:Message-Id:Date;
	bh=o/YV0MnBhh16LQj1UGBZUVXlZhTw+uPtEQkYAf27AYo=;
	b=G2/tj0c9JTM+FtpA/xjwv+NYrYUlN/ahBBlfFhf3X9TLpdK3Dn6zNgJvicRIulR9
	AVTbiZbD4UvZR9u+vSCsp0OoHRishoAUwwDG546MWX9EOUGU1iYtV1RzYSQzy/9C6Jj
	q7mApVQVmtr75m+oYKUAWjdgU8SpfthNIRm4o+Qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648829818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/YV0MnBhh16LQj1UGBZUVXlZhTw+uPtEQkYAf27AYo=;
	b=KADIT2mo5RfSSolqNqarftf3/anOl7plUkETIn0wz1fxidvKes9e2deFtD/MPJEj
	XlOAWGO2ifTO5i6CgmCgdVECfyndknUldJZmIhyGzVxIl+tr0Zx1HDv5UXYN+ME0UV5
	is0DqqSCyI0SLHR7Slhs2jrVBYxb3cy5fdftQ6c8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe5ea65a8-9d686c64-a6e5-414a-9f8d-7292f629e4ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc381b222ec9349f5a2e3bae2fe5824f93c07b74899f9f61f6e1290aa0ba82f9
Date: Fri, 1 Apr 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648829818
