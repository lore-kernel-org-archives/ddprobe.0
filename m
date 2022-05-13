Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E739917E7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 01:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652404139;
	h=To:Subject:From:Message-Id:Date;
	bh=B9cdq0KbEQ/NdNkLB5aceyo6Wu2AvTJwuE6oIBTi+O4=;
	b=Dn64OG0UjXOQVnWeMYTa1WwuxcatqxjJ+qG7y3BuFIapUDkfflD9Ev7FJMllHGsm
	oIQVxIAirWE6UhBMg2jmZdwebbjnSEJqi4uxlB0OCkN+8nDXEbYmpw7Rzr+AUs3n4wC
	ZzuwCRCnEZwLGOox8bIltEEn7vjojuEXWa7Z0c4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652404139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B9cdq0KbEQ/NdNkLB5aceyo6Wu2AvTJwuE6oIBTi+O4=;
	b=AZKPGIskBnAPlEqZGFQz+4nTaDiD3blCe4PbKLQ5yeoE/K/4vAk4GA6NkEIlG7AQ
	2+qciWGN3ZNDP9XZ5UjVK6nP2m8XtyOwuC/F148oqx1zxzKSHBVhk5/tE5qSwF5XJR0
	DsFD8T94cJR01O8g/4DApPN9hZmdRf9ALcVCwhlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180baf634f2-3189cb62-04d0-4e6c-8783-8491c7563a66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54aa86c20198473aa3c8256be7232efcd4b6b8d3c2c527c07d3ac243b02c1e34
Date: Fri, 13 May 2022 01:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652404139
