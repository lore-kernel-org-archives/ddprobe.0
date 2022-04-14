Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7473015A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 02:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649902318;
	h=To:Subject:From:Message-Id:Date;
	bh=v6JrwnHBmdXTr8p+ZtwfODN6Q9njGJCiTBVlp5iRzLw=;
	b=KCg2/2UU+oGGfwhaqtaasROndEJgkJqwSZCDPJ+yu8CRcE3oapicPkfwiUamTvd8
	Q0FbpFdiZbohJ6q7Z7R8bYUAFhSHdDkWqOuLQj7+LJ43bTQ8dea7wz7YlNDmeaWYiLi
	4y7MCfpiIjP6ys0rGeIPAaYT6SLoaHD3lvWM1KqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649902318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6JrwnHBmdXTr8p+ZtwfODN6Q9njGJCiTBVlp5iRzLw=;
	b=MHTJPqWxhz+SNe+do3YcQGCnoV9tPAUI5Z/SR9K5cpm05QziGy31VENdOgS8tkoB
	oaaq/SmQHKomt/wpfZwV/mcIkvEdqTn1EGOsyECUwgdXkX6N09Iba9STJiFDbLFI0BX
	4pqm80VfA0rihE4QDuQtKoEMF7ONeAEa75INaM7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025d77308-9b48eeee-44c0-46a6-9a27-39a3914e327e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: daf91e097b64c38781ab0817957ba9a3a46c55c4d3aabfba42e0cc4e0f2070ee
Date: Thu, 14 Apr 2022 02:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649902318
